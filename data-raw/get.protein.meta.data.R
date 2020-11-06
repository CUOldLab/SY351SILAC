get.protein.meta.data <- function(filename.protein.meta.data,
                                  absfilepath,
                                  is_gzip_file = T) {
  
  # This assumes that the file filename.protein.meta.data has been previously generated using
  # Perseus by annotating a maxQuant PhosphoSite file (Phospho(STY).txt usually), with protein-level
  # and phosphosite-level annotations. Remove the data columns to avoid duplicate columns in downstream
  # merges with data column containing data frames or tibbles.
  #  
  require(magrittr)
  require(dplyr)
  
  pmfile <- ""
  if (is.null(absfilepath)) {
    pmfile <- filename.protein.meta.data # assume it is a full path if absfilepath null
  } else {
    pmfile <- file.path(absfilepath,
                        filename.protein.meta.data)
  }
  
 
  if (is_gzip_file) {
    pmfile <- gzfile(pmfile)
  }
  
  pmetadf <- read.table(pmfile,
                      header = T, 
                      fill = T,
                      quote = "\"",
                      stringsAsFactors = F, 
                      na.strings = "NaN", 
                      sep = "\t",
                      comment.char = "#")
  
  
  pmetadf <- as_tibble(pmetadf)
  
  
  
  # pmetadf %>% filter(grepl("kinase",Protein.names, ignore.case = T) )
  # 
  # pmetadf %>% filter(grepl("kinase",Interpro.name, ignore.case = T) |
  #                      grepl("kinase",Prosite.name, ignore.case = T)  |
  #                      grepl("kinase",Pfam, ignore.case = T) ) %>% pull(Protein.name) %>% unique() %>% sort()
  
  pmetadf %>% mutate(proteinclass = if_else( (grepl("kinase",Interpro.name, ignore.case = T) | 
                                                grepl("kinase",Prosite.name, ignore.case = T)  | 
                                                grepl("kinase",Pfam, ignore.case = T)), "kinase", "" ))
}