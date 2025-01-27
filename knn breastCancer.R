library(class)
can <- read.csv("C:/Users/satak/Downloads/canEAST CANCER.csv", header = TRUE)
View(can)
str(can)
summary(can)
ran <- sample(1:nrow(can),0.9 * nrow(can))
table(can$diagnosis)
can$diagnosis <- factor(can$diagnosis,levels = c("B","M"),
                       labels = c("Benign", "Melignant"))
nor <- function(x) { (x-min(x))/ max(x) - min(x)}
can_nor <- as.data.frame(lapply(can[,c(-2)], nor))

summary(can_nor)
train <- can_nor[1:469,]
test <- can_nor[470:569,]
train_label <- can[1:469,2]
test_label <- can[470:569,2]
pr <- knn(train,test,cl = train_label, 21)

tab <- table(pr,test_label)
tab
accuracy <- function(x){ sum(diag(x)/sum(rowSums(x))) * 100 }
accuracy(tb)
