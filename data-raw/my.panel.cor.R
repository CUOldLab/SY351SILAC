
my.panel.cor <- function(x, y, digits=2, prefix="", cex.cor,...) 
{
  # browser()
  completes <- complete.cases(x,y)
  x <- x[completes]
  y <- y[completes]
  
  
  usr <- par("usr"); on.exit(par(usr)) 
  par(usr = c(0, 1, 0, 1)) 
  r <- abs(cor(x, y, use = "pairwise.complete.obs")) 
  txt <- format(c(r, 0.123456789), digits=digits)[1] 
  txt <- paste(prefix, txt, sep="") 
  if(missing(cex.cor)) cex <- 0.8/strwidth(txt) 
  
  test <- cor.test(x,y, ) 
  # borrowed from printCoefmat
  Signif <- symnum(test$p.value, corr = FALSE, na = FALSE, 
                   cutpoints = c(0, 0.001, 0.01, 0.05, 0.1, 1),
                   symbols = c("***", "**", "*", ".", " ")) 
  
  text(0.5, 0.5, txt, cex = cex,...) 
  text(.8, .8, Signif, cex=cex, col=2,...) 
}
