#array
?array
help(array)
#array keyword is used to define the array
#by default dimensions of array is 1*no. of elements
(a1<- array(1:15,dim = c(3,4,3)))
(a2<- array(c(10,22,33,77,12,43,76,88,90,45),dim = c(3,4,3)))


v1 <- c(1,3,5,7,9,11,13);v1
v2 <- c(2,4,6,8,10,12,14);v2
(a3<- array(c(v1,v2),dim = c(3,3,4),
dimnames = list(c("R1", "R2", "R3"), c("C1", "C2", "C3"), c("M1", "M2", "M3", "M4"))))
a3[2,3,4]
a3[2]
a3[2,3]  #error incorrect number of dimensions
a3[2,3,7]  #error subscript out of bounds
a3[,,3]
a3[c(1,3),1:2,c(2,4)]
a3[,2,]
a3[2,3,]
a3[,,c(1,4)]
a1<- array(1:15,dim=c(4));a1  #will create 1 row by default and 4 columns
a1<- array(,dim=c(2,3,4));a1  #will consider NA
dim(as.array(letters))  # letters function tells the length of the letter array
# as. function coverts a vector into another data type written after it. It is used for type casting 
letters
class(letters) #character
s<-as.array(letters)  # converts into array and store in s
s
class(s)  #array

s<-as.array(letters, dim = c(2,6))
s
?as.array
is.array(s) #used to tell if passed parameter is array or not

#create two vectors of different length
(a2<- array(c(10,22,33,77,12,43,76,88,90,45),dim = c(3,3,2)))

v3<-c(10,20,30);v3
v4<-c(4,5,6,7,8,9,2,3,1);v4
(a3<-array(c(v3,v4), dim=c(3,3,2)))

a2+a3   # adds corresponding value
#Error non-conformable arrays when array dim values are not equal
a2-a3
a2*a3
a2/a3
a2%%a3   #modulus/remainder
a2%/%a3  #quotient


dim(a2)#gives the dimensions 
dim(a3)

a2+a3[,1:3,]
mul <-a2%*%a3[,1:3,]
mul
