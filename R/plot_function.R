#' Plot Function Kmeans
#' 
#' This function plots the clusters from the output of the other function 
#' 
#' Plotting the clusters and the centers
#'
#' @param selectedData The data from which the clusters and centers are going to be generated
#' @param clusters The clusters calculated from the kmeans function 
#'
#' @export
#' 

plot_function <- function(selectedDate, clusters) {
  palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
            "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
  par(mar = c(5.1, 4.1, 0, 1))
  plot(selectedDate, col = clusters$cluster,pch = 20, cex = 3)
  points(clusters$centers, pch = 4, cex = 4, lwd = 4)
  legend("topleft",legend=c(levels(iris$Species), "Cluster Centers"),
         pch = c(20,20,20,4),
         col = c("red","green","blue", "black"))
  # fviz_cluster(clusters$centers, selectedDate,
  #              palette = c("#2E9FDF", "#00AFBB", "#E7B800"), 
  #              geom = "point",
  #              ellipse.type = "convex", 
  #              ggtheme = theme_bw()
  # )
}