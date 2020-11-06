
extract.first.id <- function(concatstr, splitchar = ";") {
  concat.split <- strsplit(concatstr, splitchar)
  #concat.split.len <- unlist(lapply(concat.split, length))
  #table(gsplitslen)
  #prots$Gene.name[which(gsplitslen == 0)]
  
  gfirst <- unlist(lapply(concat.split, function(x) {
    if(length(x) == 0) {
      return("")
    } else {
      return(x[[1]])
    }
  }))
  
  
  gfirst[is.na(gfirst)] <- ""
  
  
  return(gfirst)
  
}
