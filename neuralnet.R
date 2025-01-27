library(MASS)
library(neuralnet)
set.seed(123)
dataset<- Boston
str(dataset)
help("Boston")
hist(dataset$medv)
dim(dataset)
head(dataset,5)
apply(dataset,2,range)

#scale
maxval <- apply(dataset,2,max)
minval <- apply(dataset,2,min)
Dataframe <- as.data.frame(scale(dataset ,center = minval, scale = maxval-minval))                

#train test set
new <- sample(1:nrow(Dataframe),400)
trainset <- Dataframe[new,]
testset <- Dataframe[-new,]

#neuralnet
allvar <- colnames(Dataframe)
predictvar <-allvar[!allvar%in%"medv"]
predictvar <- paste(predictvar, collapse = "+")
form <- as.formula(paste("medv~", predictvar,collapse ="+"))
newmodel<- neuralnet(formula = form,
                     hidden = c(4,2),
                     linear.output = T,
                     data = trainset)
plot(newmodel)
pred <- compute(newmodel, testset[,1:13])
prediction <- pred$net.result(max(testset$medv)-min(testset$medv))+min(testset$medv)
prediction
actualvalue <- testset$medv
