
# Helper function to create an interactive MA plot using the R Plotly package. Make sure gene symbols in tdf are indicated in column Gene.name
ggvolcano <- function(tdf, # data frame containing the data to plot
                 xvar, # string name of x-variable
                 yvar,# string name of y-variable
                 labelvar, # string name of label variable, usually Gene.name
                 label.fdr.thresh, # fdr threshold for labeling
                 adjpvalvar,# string name of adjusted p-value to color points by significance
                 fdr.range.cut = c(0,0.01,0.05,0.1,1), # cuts used to categorize adj.p.vals
                 high.sig.threshold = 0.1, # all points with adj.p.value <= to this are annotated with gene symbols that must be named Gene.name, 
                 xlimits = Inf,
                 ylimits = Inf,
                 xtitle = NULL,
                 ytitle = NULL,
                 plottitle = NULL,
                 annotgenes = T,
                 revcols = T) {
  if(length(fdr.range.cut) < 3) {
    stop("fdr.range.cut should be a numeric vector of monotonically increasing fdr cut values of length between 3 and 5.")
  }
  require(ggplot2)
  require(RColorBrewer)
  require(plotly)
  require(dplyr)
  fdrcut <- function(adjpval, fdr.range.cut =  c(0,0.02,0.05,1)) {
    
    adjpval.ranges <- cut(adjpval, fdr.range.cut, include.lowest = T)  
    fdr.range.cut <- sprintf("%.2f", fdr.range.cut)
    
    
    if(length(fdr.range.cut) == 3) {
      adjpval.ranges <- factor(adjpval.ranges,levels = rev(levels(adjpval.ranges)),ordered = T,
                               labels = rev( c( paste(fdr.range.cut[1],'< q <=',fdr.range.cut[2],sep = ''),
                                                paste(fdr.range.cut[2],'< q <=',fdr.range.cut[3],sep = ''))))
    } else if(length(fdr.range.cut) == 4) {
      adjpval.ranges <- factor(adjpval.ranges,levels = rev(levels(adjpval.ranges)),ordered = T,
                               labels = rev( c( paste(fdr.range.cut[1],'< q <=',fdr.range.cut[2],sep = ''),
                                                paste(fdr.range.cut[2],'< q <=',fdr.range.cut[3],sep = ''),
                                                paste(fdr.range.cut[3],'< q <=',fdr.range.cut[4],sep = ''))))
    } else if(length(fdr.range.cut) == 5) {
      adjpval.ranges <- factor(adjpval.ranges,levels = rev(levels(adjpval.ranges)),ordered = T,
                               labels = rev( c( paste(fdr.range.cut[1],'< q <=',fdr.range.cut[2],sep = ''),
                                                paste(fdr.range.cut[2],'< q <=',fdr.range.cut[3],sep = ''),
                                                paste(fdr.range.cut[3],'< q <=',fdr.range.cut[4],sep = ''),
                                                paste(fdr.range.cut[4],'< q <=',fdr.range.cut[5],sep = ''))))
      
    } else {
      stop("fdr.range.cut vector not of length between 3 and 5.")
    }
    return(adjpval.ranges)
  }
#  browser()
  xvar <- enquo(xvar)
  yvar <- enquo(yvar)
  adjpvalvar <- enquo(adjpvalvar) 
  labelvar <- enquo(labelvar)
  adjpvalvarcut <- fdrcut(tdf %>% dplyr::select(!! adjpvalvar) %>% pull(), fdr.range.cut = fdr.range.cut)
  txtlabels <- tdf %>% dplyr::select(!! labelvar) %>% pull()
  adjpvals <- tdf %>% dplyr::select(!! adjpvalvar) %>% pull()
  txtlabels[adjpvals > label.fdr.thresh] <- ""
  
  if(revcols) {
    rcols <- rev(brewer.pal(n = 7, name = "Reds"))[1:(length(fdr.range.cut) - 2)]
  } else {
    rcols <- brewer.pal(n = 7, name = "Reds")[1:(length(fdr.range.cut) - 2)]
  }
  
  gcol <- brewer.pal(n = 5, name = "Greys")[3]
  
  ggy <- tdf %>% ggplot(mapping = aes_string( quo_name(xvar), quo_name(yvar))) +
    geom_point(aes(color = adjpvalvarcut), alpha = 0.5) +
                #   alpha = 0.2)) +  #text = quo_name(labelvar), #Gene.name,
    scale_colour_manual(values = c(gcol, rev(rcols))) +
    geom_vline(xintercept = 0,color = "grey") +
    geom_text(label = txtlabels, hjust = "outward", size = 3,
              check_overlap = T) +
    
    theme_classic(base_size = 15,
                  base_line_size = 2)  +
     theme(legend.title = element_blank(),
           legend.position= c(0.85,0.2)) 
   # xlab(xtitle) + ylab(ytitle)
 
  if ( !is.infinite(xlimits[1])) {
    ggy <- ggy + xlim(xlimits)
  } 
  if ( !is.infinite(ylimits[1])) {
    ggy <- ggy + ylim(ylimits)
  } 
  if(!is.null(xtitle) ) {
    ggy <- ggy + xlab(xtitle)
  }
  
  if(!is.null(ytitle) ) {
    ggy <- ggy + ylab(ytitle)
  }
  
  if(!is.null(plottitle) ) {
    ggy <- ggy +  ggtitle(plottitle) 
  }
  
  tdf.thresh10pct <- tdf %>% dplyr::filter(!! adjpvalvar <= 0.01 & !! adjpvalvar > high.sig.threshold)
    
  tdf.thresh1pct <- tdf %>% dplyr::filter(!! adjpvalvar <= high.sig.threshold)
  
#  tdf.threshy <- tdf %>% dplyr::filter(!! yvar > 25 & !! xvar < 2 )  

  ggply <- ggplotly(ggy, tooltip = "text")
  
  ggply <- ggply %>% add_annotations(x = tdf.thresh10pct %>% dplyr::select(!! xvar) %>% pull(),
                                     y  = tdf.thresh10pct %>% dplyr::select(!! yvar) %>% pull(),
                                     text = tdf.thresh10pct %>% dplyr::select(!! labelvar) %>% pull(),
                                     font = list(family = 'Arial',
                                                 size = 12,
                                                 color = 'black'),
                                     showarrow = T,
                                     visible = F,
                                     arrowhead = 4,
                                     arrowwidth = 0.5,
                                     arrowcolor = 'grey',
                                     arrowsize = .5,
                                     ax = 20,
                                     ay = -20,
                                     clicktoshow = "onoff")
  
  if (annotgenes) {
    ggply <- ggply %>% add_annotations(x = tdf.thresh1pct %>% dplyr::select(!! xvar) %>% pull(),
                    y  = tdf.thresh1pct %>% dplyr::select(!! yvar) %>% pull(),
                   text = tdf.thresh1pct %>% dplyr::select(!! labelvar) %>% pull(),
                    font = list(family = 'Arial',
                                size = 13,
                                color = 'black'),
                    showarrow = T,
                    visible = T, 
                    arrowhead = 4,
                    arrowwidth = 0.5,
                    arrowcolor = 'grey',
                    arrowsize = .5,
                    ax = 20,
                    ay = -20,
                    clicktoshow = "onoff") 
  }
  
  # ggply <- ggply %>% add_annotations(x = tdf.threshy %>% select(!! xvar) %>% pull(),
  #                 y  = tdf.threshy %>% select(!! yvar) %>% pull(),
  #                 text = tdf.threshy$Gene.name,
  #                 font = list(family = 'Arial',
  #                             size = 12,
  #                             color = 'black'),
  #                 showarrow = T,
  #                 visible = F, 
  #                 arrowhead = 4,
  #                 arrowwidth = 0.5,
  #                 arrowcolor = 'grey',
  #                 arrowsize = .5,
  #                 ax = 20,
  #                 ay = -20,
  #                 clicktoshow = "onoff")
  
 
  
  
  return(list(ggplot_volcano = ggy,
              plotly_volcano = ggply))

  
}

# Try:
# myggma <- tophits %>% ggmaplot(xvar = abcam, yvar = avgabcam, adjpvalvar = abcam.adj.P.Val)
# ggplotly(myggma, tooltip = "text")
