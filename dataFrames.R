x<-data.frame("SN" = 1:2, "Age" = c(21,15), "Name" = c("John", "Dora"))
#every data object should be multiple of each other or equal length
x
str(x)
?str()

x<-data.frame("SN" = 1:2, "Age" = c(21,15,32), "Name" = c("John", "Dora"))
#Error in data.frame(SN = 1:2, Age = c(21, 15, 32), Name = c("John", "Dora")) : arguments imply differing number of rows: 2, 3

x<-data.frame("SN" = 1:2, "Age" = c(21,15,32,4), "Name" = c("John", "Dora"))
x

x<-data.frame("SN" = 1:6, "Age" = c(21,15,32,4), "Name" = c("John", "Dora"))
x
x<-data.frame(SN = 1:2, Age = c(32,4), Name = c("John", "Dora"))
x


#access values
x[2,3]
x[3,2]
x[2,]
x[,3]
class(x[,3])
length(x) #calculates 1D data (no. of columns)
dim(x)
str(x) #structure of data frame
names(x) #gives the column names
ncol(x)  #number of columns
nrow(x)  #number of rows
x$SN  #using dollar to access data elements of column(attributes)
x$Age[2]

summary(x)
x
x<-cbind(x,"Section" = c("A","B"))
x<-rbind(x, c(3,23,"Jack", "A"))
x

#data function
data()
airquality
View(airquality)   #tabular display
?airquality
a<-airquality
str(a)
summary(a)
