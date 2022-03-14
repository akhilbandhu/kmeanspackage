#' Shiny K means function
#' 
#' This function will create the shiny app for the kmeans package.
#' The appdir object basically looks for the shiny folder in the kmeans 
#' package and runs the ui and server functions.
#'
#' The ui.R file will create the ui for the application.
#' The server.R will set up the server.
#' The app.R function sources both the ui and server functions. 
#' 
#' @export
#' 

shiny_k_means <- function() {
  appdir <- system.file("shiny", package = "kmeanspackage")
  shiny::runApp(appdir)
}