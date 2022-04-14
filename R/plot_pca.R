#' Plot Function PCA
#' 
#' This function plots the clusters from the output of the other function 
#' 
#' Plotting the clusters and the centers
#'
#' @param selectedData The data from which the clusters and centers are going to be generated
#'
#' @export
#' 

plot_pca <- function(selectedData) {
  pca <- prcomp(selectedData, scale = TRUE)  
  
  pcaData <- as.data.frame(pca$x[, 1:2]) # extract first two columns and convert to data frame
  pcaData <- cbind(pcaData, iris$Species) # bind by columns
  colnames(pcaData) <- c("PC1", "PC2", "Species") # change column names
  ggplot(pcaData) +
    aes(PC1, PC2, color = Species, shape = Species) + # define plot area
    geom_point(size = 2) # adding data points
}