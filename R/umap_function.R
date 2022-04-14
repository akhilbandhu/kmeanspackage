#' UMAP function 
#' 
#' This function does the umap dimensional reduction
#' 
#' @param selectedData The data from which the clusters and centers are going to be generated
#'
#' @return a layput object is created
#'
#' @export
#' 
umap_function <- function(selectedData) {
  return(umap(selectedData))
}