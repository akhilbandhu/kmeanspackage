server <- function(input, output, session) {
  
  selected_data_kmeans <- reactive({
    iris[, c(input$variable_kmeans)]
    # input$variable
  })
  
  selected_data_pca <- reactive({
    iris[, c(input$variable_pca)]
  })
  
  selected_data_umap <- reactive({
    iris[, c(input$variable_umap)]
  })

  umap_iris <- reactive({
    umap_function(selected_data_umap())
  })
  
  clusters <- reactive({
    kmeans_function(selected_data_kmeans(), input$clusters)
  })
  
  output$plot1 <- renderPlot({
    plot_function(selected_data_kmeans(), clusters())
  })
  output$plot2 <- renderPlot({
    plot_pca(selected_data_pca())
  })
  
  output$plot3 <- renderPlot({
    plot_pca(umap_iris())
  })
}