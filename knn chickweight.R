View(ChickWeight)
library(class)
cw <- data.frame(ChickWeight)
str(cw)
summary(cw)
View(cw)

ran <- sample(1:nrow(cw),0.95 * nrow(cw))
ran
nor <- function(x) { (x-min(x)) / (max(x) - min(x)) }
cw_nor <- as.data.frame(lapply(cw[,c(1,2)], nor))
View(cw_nor)

#cw_train <- cw_nor[ran,] 
#cw_test <- cw_nor[-ran,]

cw_train <- cw[ran,] 
cw_test <- cw[-ran,]
cw_train_label <- cw[ran,4]
cw_test_label <- cw[-ran,4]
re <- knn(train = cw_train, test = cw_test, cl = cw_train_label, k = 10)
tb <- table(re, cw_test_label)
tb
accuracy <- function(x){ sum(diag(x)/sum(rowSums(x))) * 100 }
accuracy(tb)
