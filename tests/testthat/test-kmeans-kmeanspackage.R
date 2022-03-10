input_data1 <- iris[,2]
input_clusters1 <- 1

input_data2 <- iris[,3]
input_clusters2 <- 1

input_data3 <- iris[,4]
input_clusters3 <- 1

kmeans_test <- kmeans(input_data1, input_clusters1)
function_test <- kmeans_function(input_data1, input_clusters1)

expect_equal(kmeans_test, function_test)

expect_equal(
  kmeans(input_data2, input_clusters2),
  kmeans_function(input_data2, input_clusters2)
)

expect_equal(
  kmeans(input_data3, input_clusters3),
  kmeans_function(input_data3, input_clusters3)
)