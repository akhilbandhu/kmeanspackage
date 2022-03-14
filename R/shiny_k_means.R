#' This function plots the clusters from the output of the other function 
#' 
#' Plotting the clusters and the centers
#'
#' @param selectedData The data from which the clusters and centers are going to be generated
#' @param clusters The clusters calculated from the kmeans function 
#'
#' @export
#' 

shiny_k_means <- function() {
  appdir <- system.file("shiny", package = "kmeanspackage")
  shiny::runApp(appdir)
}