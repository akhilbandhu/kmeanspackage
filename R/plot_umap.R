#' Plot Function UMAP
#' 
#' This function plots the UMAP dimensionality reduction in two dimensions
#' 
#'
#' @param selectedData The data from which the clusters and centers are going to be generated
#'
#' @export
#' 

plot_pca <- function(umap_iris) {
  data.frame(umap_iris$layout, Species=iris$Species) %>%
    ggplot(aes(X1,X2, color = Species, shape = Species))+
    geom_point() +
    coord_fixed(ratio = 1)
}