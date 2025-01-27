#Unit-2

#vector always starts with index 1.
#vector - (integer, Boolean, numeric, character)
#vector stores in homogeneous data elements
x <- c(1,2,3,4,5,6,7,8,9,3,5)  #numeric declaration
#priority - character > numeric 
#numeric supports both- integer and decimal
#x contains random variable, we use c function in this
x
class(x)
a <- c(1,2,3,4,5,6,7,8,9,3,5,4.5)
a

class(a)
b <- c(1,2,3,4,5,6,7,8,9,3,5,4.5, "A")
b
class(b) #the class is converted to higher priority data type

y <- 1:20  #integer declaration
y
class(y) 
# ':' colon is a collection function(increment by one)
z <- 1.5:20 #numeric
z
class(z) 

c <- 50:40 #integer
c
class(c)
typeof(c)

d <- 50.5:40
d
class(d)  #general data type(numeric)
typeof(d) #more specific data type(double)


e <- c(1:15, 30:40, 80:90)  #if value is passed without any sequence the class results in numeric
e
typeof(e)
length(e)  #size of a variable, works with single dimensional data objects
e[25]  #positional value
e[5] <- 200 #update a positional value
e[38] <- 10 #add value at the end
e[50] <- 100 #sequential value assignment, 100 will be assigned at position 50
e <- e[-5] #deletion  of value by assigning negative index to the variable
e

e[6:10]  #fetching range of values


#using position
x <- c(7,8,9,4,6,7,4,3,10,20,5);x
x[3]
x
length(x)
x[c(1,3,8,10,15)] <- c(70,25,65,800,900)   #assigning multiple values to multiple position
x[c(4:8, 12, 1:3)]
x
s <- x[1:10]
s
x <- x[c(-4,-10)]  #permanent update
x[-4]  #temporary update
x


#logical indexing
y <- c(3,4,5,7,8,2,1,6,10,5,8,11);y  #total values are 12
y[c(T,T,F,T,F,F,T,F)]  #passed logical index for 7
y[c(T,F)] #print alternative elements in vector
y[c(T,T,F,F)]

#using negative indexing
y <- c(3,4,5,7,8,2,1,6,10,5,8,11);y 
y[-5]
y[c(-5,-6,-7)]   #these position value will get removed
x[-c(5,6,7)]    #these position value will get removed
y

#using 0/1 indexing
x <- c(7,8,9,4,6,7,4,3,10,20,5);x
x[c(1,0,1,1,0)]  #gives the first index value for no. of ones, 0 and 1 are not T and F


#vector manipulation
v1 <- c(7,8,9,4,56,57,32);v1    #len vec 6
v2 <- c(10,22,33,44,55); v2      #len vec 5
v1[3] <- 900;v1
v2[c(2,3,4)] <- c(0,1,2);v2


v1+v2   #WARNING ERROR longer object length is not a multiple of shorter object length
#the length of the longer vector should be multiple of any length

a1 <- c(2,3,4,5);a1
a2 <- c(6,7,8,9,10,11,12,13);a2

addvec <-a1+a2; addvec
subvec <-a1-a2; subvec
mulvec <-a1*a2; mulvec
(divvec <-a2/a1)  #outer bracket means assignment and execution of statement at the sae time
(modvec <-a2%%a1)    #remainder operator 
(quovec <-a2%/%a1)   #quotient operator


#types of warning
#->Hard warning- warning that may affect data in long run
#->Soft warning- 

#vector element recycling-when vectors are of unequal length
v3 <- c(11,22,44,55,66,77);v3
v4 <- c(6,10);v4  #v4= c(6,10,6,10,6,10,6)
v3+v4


#vector sorting
l <-c(3,7,1,2,5,9,10,4);l
(sortvec <- sort(l,decreasing = T))  
(sortvec <- sort(l))  
#by default sorting is done is ascending order


#t is transpose function
#initiate the vector with transpose and convert vector to list

#logical vector
v6 <- c(TRUE, FALSE, T, T, F,T,F);v6
v7 <- c(2,3,4,5,6,9,10);v7
v6+v7 #converts True value to 1 and false value to 0
class(v6)
