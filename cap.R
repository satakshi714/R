library("Painters")





























































install.packages('sqldf')
require(sqldf)
??sqldf
data("UCBAdmissions")
View(UCBAdmissions)
str(UCBAdmissions)
summary(UCBAdmissions)

#must be data frame
ucb <- as.data.frame(UCBAdmissions)
str(ucb)
sqldf("Select * from ucb")

#return female student admission result
sqldf("select * from ucb where Gender = 'Female'")

#return the admitted students for female categories
sqldf("select * from ucb where admit = 'Admitted' and gender = 'Female'")

#order admissions
sqldf("SELECT * FROM ucb WHERE ADMIT = 'Admitted' ORDER BY FREQ DESC")

#departments in the Data set
sqldf("select dept from ucb group by dept")
sqldf("select distinct Dept from ucb")

#aggregate Queries
#total admitted student
sqldf("select sum(freq) from ucb where admit = 'Admitted'")
sqldf("select admit, sum(freq) from ucb where gender = 'Male' group by admit")

#admitted students in dept E
sqldf("select dept, sum(freq) from ucb where admit = 'Admitted' and dept = 'E'")


#department wise total admitted students
sqldf("select dept, sum(freq) from ucb where admit = 'Admitted' group by dept")

#department wise total rejected students
#total rejected students
sqldf("select sum(freq) from ucb where admit = 'Rejected'")

#return total admitted males
sqldf("select sum(freq) as total_dudes from ucb where admit = 'Admitted' AND gender = 'Male'")

#return total rejected females
sqldf("select sum(freq) as total_ladies from ucb where Admit = 'Rejected' AND Gender = 'Female'")

#average number of admitted students by dept (usually mean)
sqldf("select Dept, avg(freq) as average_admitted from ucb where Admit = 'Admitted' group by Dept")

#create another data table, named majors
majors <- data.frame(major = c("math", "biology", "engineering", "computer science", "history", "architecture"),
                     DEPT = c(LETTERS[1:5], "Other"),
                     Faculty = round(runif(6, min = 10, max = 30)))
majors

sqldf("select * from ucb")

#how many majors are there
sqldf("select distinct count(dept)from ucb")

#minimum amount if students rejected
sqldf("select min(Freq) from ucb where Admit = 'Rejected'")

#wild card match queries
#pattern matching - case insensitive
sqldf("select * from ucb where Freq between 20 AND 100")
sqldf("select * from ucb where Gender Like 'Fe%'")
sqldf("select * from ucb where Gender Like '%male%'")
sqldf("select * from ucb where Gender Like 'Ma%'")
sqldf("select * from ucb where Gender Like 'Fe%'")
sqldf("select * from ucb where Gender = 'Female' AND Freq >= 100")
sqldf("select * from ucb where Gender Like '_ale'")
sqldf("select * from ucb where Gender NOT Like 'M_l_'")


#Manipulation and nested queries



#Join Queries ---where clause in not used
#join two tables together by common key
sqldf("select * from ucb inner join majors on ucb.Dept = majors.Dept")

#join table on the left with resultant null's on the right table   ----left outer join
sqldf("select * from ucb left join majors on ucb.Dept = majors.Dept")
sqldf("select * from majors left join ucb on ucb.Dept = majors.Dept")

#join table on the left with resultant null's on the left table    ----right outer join
sqldf("select * from majors right join ucb on ucb.Dept = majors.Dept")
sqldf("select * from ucb right join majors on ucb.Dept = majors.Dept")

#cross join 
sqldf("select * from ucb join majors")

#self join
sqldf("select * from ucb inner join ucb on ucb.Dept = ucb.Dept")







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









st <- read.csv("C:/Users/satak/OneDrive/Desktop/Uni/Datasets/STATES.csv")
getwd()
View(st)
States <- read.csv(file.choose(), sep=',',header=T)
View(States)
str(States)
summary(States)
is.na(States)

#=======================================================================================================================================================
#Removing NAs

S1= States
View(S1[!complete.cases(S1),])
S1 =na.omit(S1)     #All Na rows will be omitted from dataset
View(S1)
summary(S1)
nrow(S1)

#=======================================================================================================================================================

#Imputing NA values can be done manually, automatically, semi-manually
#Imputing NAs manually

S2=States
View(States)
str(States)
summary(States)
View(S2[!complete.cases(S2),])
names(S1)                 #colnames of df
mean(S1$Literacy.Rate.,na.rm=T)
S2[which(S2$State=="Tripura"),"Literacy.Rate."]  =  mean(S2$Literacy.Rate.,na.rm=T)  #index for particular value
S2[which(S2$State=="Goa"),"Tree.Cover"]  =  mean(S2$Tree.Cover,na.rm=T) 
S2[which(S2$State=="Madhya Pradesh"),"Tree.Cover"]  =  mean(S2$Tree.Cover,na.rm=T) 
S2[which(S2$State=="Rajasthan"),"Sex.Ratio"]  =  mean(S2$Sex.Ratio,na.rm=T) 
summary(S2)


#=======================================================================================================================================================
#Imputing NAs semi-manually

S3=States
View(S3)
View(S3[!complete.cases(S3),])
names(which(sapply(S3, anyNA)))
S3$Literacy.Rate.[is.na(S3$Literacy.Rate.)] = mean(S3$Literacy.Rate. ,na.rm = T)        
S3$Tree.Cover[is.na(S3$Tree.Cover)] = mean(S3$Tree.Cover ,na.rm = T)
S3$Sex.Ratio[is.na(S3$Sex.Ratio)] = mean(S3$Sex.Ratio ,na.rm = T)


#=======================================================================================================================================================
#Imputing NAs Automatically
S4=States
View(S4)
View(S4[!complete.cases(S4),])
for(i in 1:ncol(S4)){
  S4[is.na(S4[,i]),i] = round(mean(S4[,i], na.rm = TRUE))
}
View(S4[!complete.cases(S4),])
#=======================================================================================================================================================
#Imputing NAs using package

library(missForest)
S5 <- States
summary(S5)
which(sapply(S5,anyNA))
S5.imp <-missForest(S5[,which(sapply(S5,anyNA))])
View(S5.imp)
completeMissfor <- as.data.frame(S5.imp[[1]])
newS5 <-cbind(S5[-c(7,9,11)],completeMissfor)
View(newS5)

iris.mis <- prodNa(iris, noNa = 0.1)
summary(iris.mis)



















