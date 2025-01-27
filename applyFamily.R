
#apply family Function

data_pvc <- read.csv("C:/Users/satak/Downloads/pvc.csv")
View(data_pvc)

pvc1 <- read.csv(file.choose(), sep=',',header=T)
View(pvc1)
summary(pvc1)

#list

color.list <-list(color1 = c(10,2,3,45,4,56),
                         color2 = c(10,2,3,45,4,56),
                         color3 = c(10,2,3,45,4,56),
                         color4 = c(10,2,3,45,4,56))
color.list
sapply(color.list,mean)    #always give output in simplified form
lapply(color.list,mean)    #always gives output in list form
sapply(color.list,mean,simplify =T)
#data frame

color.frame <-data.frame(color1 = c(10,2,3,45,4,56),
                         color2 = c(10,2,3,45,4,56),
                         color3 = c(10,2,3,45,4,56),
                         color4 = c(10,2,3,45,4,56))
color.frame
sapply(color.frame,mean)
sapply(color.frame,mean,simplify =F)
sapply(mat_pvc, mean)
str.vec
sapply(str.vec, toupper)
sapply(str.vec, nchar)
?sapply

#named vector
vec1 <- c(first=2,second =4, third =3,fourth =4)
vec1
cal_fun <-function(x){
  x*x
}

sapply(vec1,cal_fun)
sapply(vec1, function(x){x*x})



#tapply function
?tapply
tapply(iris$Sepal.Length, iris$Species, mean, na.rm=T)
tapply(iris[,3],iris[,5],mean)

Test1 <- c(45,65,78,65,87,98,87,34,56,77);
Test2 <- c(56,54,32,34,67,78,89,98,65,54);
sec <- c("A","B","C","A","C","B","A","A","B","C")
stuid <- 101:110
marks <- c(45,56,67,78,89,87,76,65,54,43);
(stu.df <-data.frame(STUDENT_ID = stuid,
                     Marks = marks,
                     Eng = Test1,
                     History = Test2,
                     Section = sec))
tapply(stu.df$Eng,stu.df$Section,mean) 


#mapply function
x<-1:10
y<-11:20
z<-21:30
r<-31:40
mapply(sum,x,y,z,r)
s<- mapply(sum,Test1,Test2)
s










