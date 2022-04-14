ui <- fluidPage(
  
  # Put a titlePanel here
  titlePanel("Unsupervised Learning"),
  
  mainPanel(
    tabsetPanel(type = "tabs",
                tabPanel("K-means Clustering",
                         sidebarPanel(
                           checkboxGroupInput("variable_kmeans", "Variables to show:",
                                              c("Sepal Length" = "Sepal.Length",
                                                "Sepal Width" = "Sepal.Width",
                                                "Petal Length" = "Petal.Length",
                                                "Petal Width" = "Petal.Width")),
                           numericInput('clusters', 'Cluster count', 3,
                                        min = 1, max = 15)
                         ),
                         # Main panel. put your output plot here
                         mainPanel(
                           plotOutput('plot1')
                         )
                ),
                tabPanel("K-Nearest Neigbors",
                         
                        ),
                tabPanel("PCA",
                         sidebarPanel(
                           checkboxGroupInput("variable_pca", "Variables to show:",
                                              c("Sepal Length" = "Sepal.Length",
                                                "Sepal Width" = "Sepal.Width",
                                                "Petal Length" = "Petal.Length",
                                                "Petal Width" = "Petal.Width"))
                         ),
                         # Main panel. put your output plot here
                         mainPanel(
                           plotOutput('plot2')
                         )
                        ),
                tabPanel("UMAP",
                         sidebarPanel(
                           checkboxGroupInput("variable_umap", "Variables to show:",
                                              c("Sepal Length" = "Sepal.Length",
                                                "Sepal Width" = "Sepal.Width",
                                                "Petal Length" = "Petal.Length",
                                                "Petal Width" = "Petal.Width"))
                         ),
                         # Main panel. put your output plot here
                         mainPanel(
                           plotOutput('plot3')
                         )
                         )
    )
  )
)