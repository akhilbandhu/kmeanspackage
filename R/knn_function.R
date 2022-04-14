#' K-Nearest Neighbors
#' 
#' This function calculates the nearest neighbors
#' 
#' @param selectedData The data from which the clusters and centers are going to be generated
#' @param clusters The number of neighbors being used to plot \code{clusters}
#'
#' @return a cluster object with centers and clusters
#'
#' @export
#' 

knn_function <- function(selectedData, clusters) {
  return(kmeans(selectedData, clusters))
}