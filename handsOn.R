#Hands on:1. Make a subset of ozone ranges between 30-50 in airquality dataset
View(airquality)
a<-airquality
summary(a)
str(a)
is.na(a)
a=na.omit(a)
View(a)
b <- subset(a, Ozone>30 & Ozone<50 ,select = c(Ozone))
View(b)


#Hands on:2. 
#1. fetch the detailsfor iris flower with sepal length greater than 5
#2. find out the maximum petal width of the flower
library(sqldf)
View(iris)
d<-iris
View(d)
d1<-sqldf("select * from d where [Sepal.Length] > 5")
d3<-max(d$Petal.Width)
d3


#Hands on:3. (Aggregate Queries)
#1. total admitted students
#2. total number of admitted students in department E
#3. department wise total admitted students
#4. department wise total rejected students
View(UCBAdmissions)
u<-UCBAdmissions
summary(u)
str(u)

u <- as.data.frame(UCBAdmissions)
u1<-sqldf("select sum(freq) from u where admit = 'Admitted' ")
u1
u2<-sqldf("select sum(freq) from u where admit = 'Admitted' and Dept = 'E'")
u2
u3<-sqldf("select Dept, sum(freq) from u where admit = 'Admitted' group by Dept")
u3
u4<-sqldf("select Dept, sum(freq) from u where admit = 'Rejected' group by Dept")
u4


#Hands on:4.
install.packages("ggplot2")
library(ggplot2)
View(iris)

ggplot(data=iris, aes(y = Petal.Length, x = Sepal.Length, col = Species, shape = Species))+geom_point()
ggplot(data=iris, aes(y = Petal.Length, x = Petal.Width, col = Species, shape = Species))+geom_point()
ggplot(data=iris, aes(y = Petal.Length, x = Sepal.Width, col = Species, shape = Species))+geom_point()
ggplot(data=iris, aes(y = Sepal.Length, x = Sepal.Width, col = Species, shape = Species))+geom_point()
ggplot(data=iris, aes(y = Sepal.Length, x = Petal.Length, col = Species, shape = Species))+geom_point()
ggplot(data=iris, aes(y = Sepal.Width, x = Petal.Width, col = Species, shape = Species))+geom_point()


#Hands on:5.
ggplot(data=iris, aes(x = Sepal.Length))+geom_histogram()
ggplot(data=iris, aes(x = Sepal.Length))+geom_histogram(bin=50)
ggplot(data=iris, aes(x = Sepal.Length))+geom_histogram(bin=50, fill = "brown")
ggplot(data=iris, aes(x = Sepal.Length))+geom_histogram(bin=50, fill = "brown", col = "black")

ggplot(data=iris, aes(x = Sepal.Width))+geom_bar()
ggplot(data=iris, aes(x = Sepal.Width, fill = Sepal.Length))+geom_bar()

ggplot(data = iris, aes(x = Sepal.Width, y = Petal.Width, fill = Species))+geom_boxplot()
summary(iris)
str(iris)


#Hands on:6.
View(airquality)
a3 <- airquality
a3$Ozone[is.na(a3$Ozone)] <- mean(a3$Ozone, na.rm = TRUE)
a3$Solar.R[is.na(a3$Solar.R)] <- mean(a3$Solar.R, na.rm = TRUE)
View(a3)

a4 <- airquality
a4$Ozone[is.na(a4$Ozone)] <- runif(n = sum(is.na(a4$Ozone)),
                                  min = min(a4$Ozone, na.rm = TRUE),
                                  max = max(a4$Ozone, na.rm = TRUE))
a4$Solar.R[is.na(a4$Solar.R)] <- runif(n = sum(is.na(a4$Solar.R)),
                                  min = min(a4$Solar.R, na.rm = TRUE),
                                  max = max(a4$Solar.R, na.rm = TRUE))
View(a4)

a5<-airquality
a5$Ozone[is.na(a3$Ozne)] <- runif(n = sum(is.na(a5$Ozone)),
                                  min = min(a5$Ozone),
                                  max = max(a5$Ozone))
View(a5)

iris[] <- lapply(iris, as.factor)


#Hands on:7.
install.packages("ChickWeight")
library(ChickWeight)
