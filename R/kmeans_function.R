#' This function calculates the clusters from the given input
#' It is basically a wrapper around the kmeans function itself
#' 
#' @param selectedData The data from which the clusters and centers are going to be generated
#' @param clusters The number of clusters being used to plot \code{clusters}
#'
#' @return a cluster object with centers and clusters
#'
#' @export
#' 

kmeans_function <- function(selectedData, clusters) {
  return(kmeans(selectedData, clusters))
}