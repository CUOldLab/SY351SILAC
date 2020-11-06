silac_model_matrix <- function (targets, parameters = NULL, ref = NULL, verbose = TRUE) 
{
  
  # Modeled after limma's modelMatrix() function
  # Make sure the the target data frame has two columns: Light and Heavy
  # which indicates the sample's SILAC label. 
  #  targets. e.g. for a label-swap design:
  # samples   Light   Heavy
  # 1    null  DMSO  DMSO
  # 2    rep1  DMSO SY351
  # 3    rep2  DMSO SY351
  # 4  rep3LF SY351  DMSO
  # 
  if (missing(targets)) 
    stop("targets is required argument")
  targets <- as.matrix(targets)
  if (!all(c("Light", "Heavy") %in% colnames(targets))) 
    stop("targets should contain columns: Light and Heavy")
  if (is.null(parameters) == is.null(ref)) 
    stop("exactly one of the arguments parameters and ref should be specified")
  target.names <- sort(unique(as.vector(t(as.matrix(targets[, 
                                                            c("Light", "Heavy")])))))
  if (verbose) 
    cat("Found unique target names:\n", target.names, 
        "\n")
  if (is.null(parameters)) {
    if (!(ref %in% target.names)) 
      stop(paste("\"", ref, "\" not among the target names found", 
                 sep = ""))
    other.names <- setdiff(target.names, ref)
    target.names <- c(ref, other.names)
    ntargets <- length(target.names)
    parameters <- rbind(-1, diag(ntargets - 1))
    rownames(parameters) <- target.names
    colnames(parameters) <- other.names
  }
  else {
    parameters <- as.matrix(parameters)
    if (length(target.names) != nrow(parameters)) 
      stop("rows of parameters don't match unique target names")
    if (any(sort(target.names) != sort(rownames(parameters)))) 
      stop("rownames of parameters don't match unique target names")
    target.names <- rownames(parameters)
    ntargets <- nrow(parameters)
    if (ncol(parameters) != ntargets - 1) 
      warning("number of parameters should be one less than number of targets")
  }
  narrays <- nrow(targets)
  J <- matrix(rep(target.names, narrays), ntargets, narrays)
  J <- t((t(J) == targets[, "Heavy"]) - (t(J) == targets[, 
                                                       "Light"]))
  rownames(J) <- target.names
  colnames(J) <- rownames(targets)
  zapsmall(t(solve(crossprod(parameters), crossprod(parameters, 
                                                    J))), 14)
}