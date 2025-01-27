data("iris")
head(iris)
summary(iris)
#NAS
colSums(is.na(iris))
df = iris %>% select(1:4) %>% scale() %>% data frame()
head(df)
?kmeansresult = kmeans(df, 3, nstart = 25)
print(result)
aggregate(df, by = list(cluster = result$cluster),mean)
#df = cbin(df, iris$Species)
newdata = cbind(df,cluster=result$cluster)
head(newdata)
result$cluster
head(result$cluster,4)
result$size
result$centers
#visulaization
library("ggplot2")
library(factoextra)
ffplot(data = newdata)