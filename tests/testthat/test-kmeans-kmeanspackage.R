input_data <- iris[, c(1, 2)]
input_clusters <- 3

kmeans_test <- kmeans(input_data, input_clusters)
function_test <- kmeans_function(input_data, input_clusters)

expect_equal(kmeans_test, function_test)
