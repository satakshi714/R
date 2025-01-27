library(ggplot2)

#load data
data("diamonds")
View(diamonds)
str(diamonds)
?diamonds

#store it in data frame
dia <- data.frame(diamonds)
summary(dia)
str(dia)
View(dia)

#create a random number equal 90% of total number of rows
ran <- sample(1:nrow(dia),0.9 * nrow(dia))

#create the normalization function 
nor <- function(x){ (x-min(x))/(max(x)-min(x)) }

#normalization function is created
dia_nor <- as.data.frame(lapply(dia[,c(1,5,6,7,8,9,10)], nor))
summary(dia_nor)
View(dia_nor)

#training data set extracted
dia_train <- dia_nor[ran,]

#test data set extracted
dia_test <- dia_nor[-ran,]

#the 2nd column of the training data set because this is what we need the predict about
#testing data set
#also convert ordered factor into normal factor
dia_target <- as.factor(dia[ran,2])

#the actual values of 2nd column of testing dataset to compare it with the values that will be predicted
#also convert ordered factor into normal factor
test_target <- as.factor(dia[-ran,2])

#run knn function
install.packages("class")
library(class)
?knn
pr <- knn(dia_train, dia_test, cl = dia_target, k = 20)

#create the confusion matrix
#A confusion matrix is a table used to evaluate the performance of a classification algorithm. It compares the actual target values with those predicted by the model.
tb <- table(pr, test_target)
tb

#check accuracy
accuracy <- function(x){ sum(diag(x)/sum(rowSums(x))) * 100 }
accuracy(tb)
