data<-read.csv(file.choose(),sep=';',header=T)
head(data)
str(data)
summary(data)
data$quality=as.factor(data$quality)
data_size = floor(nrow(data)*0.80)
index <- sample(1:nrow(data),size = data_size)
training <- data[index,]
testing <-data[-index,]
library(randomForest)
?randomForest
rF<- randomForest(quality~.,
                  data = training, mtry = 4,ntry=200,importance=TRUE)
rF
plot(rF)
