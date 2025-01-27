(mat <-matrix(1:12,nrow = 3, ncol = 4))
#matrix is a generalized form for arithmetic calculation
#matrix will be having only 2-D arrays
#does not have dimensions
#by default values are assigned column-wise, byrow=F

(mat <-matrix(1:20,nrow = 3, ncol = 4))
#Warning message: In matrix(1:20, nrow = 3, ncol = 4) :data length [20] is not a sub-multiple or multiple of the number of rows [3]

(mat <-matrix(1:10,nrow = 3, ncol = 4))
#Warning message:In matrix(1:10, nrow = 3, ncol = 4) :data length [10] is not a sub-multiple or multiple of the number of rows [3]

(mat <-matrix(1:12, ncol = 4,byrow =T))  #values will be assigned row-wise
class(mat[3,])
class(mat[c(1,3),])
class(mat[,2])
attributes(mat)   #gives the dimensions rows and columns with their dimnames if exist
dimnames(mat)
(mat <-matrix(1:12,ncol = 4))
#by default nrow will be assigned based on ncol and number of elements
(mat <-matrix(1:21,nrow = 4))
#creates a matrix with repetition of value but gives the warning message of value not multiple
mat1 <- matrix(1:9, nrow = 3, ncol = 3, byrow = T, dimnames = list(c("R1","R2","R3"),c("C1","C2","C3")))
mat1
colnames(mat1) <- c("c1","c2", "c3")
rownames(mat1) <- c("r1","r2","r3")
#array can be converted to matrix by as.matrix()
(a1<- array(1:15,dim = c(3,4,3)))
as.matrix(a1)
as.matrix(a1,ncol=4) #wont work as ncol is not a parameter of as.matrix but wont give an error or warning
matrix(a1,ncol=4)
dimnames(mat1)
m <- matrix(letters[1:15],nrow = 2);m
m <- matrix(LETTERS[1:15],nrow = 2);m
class(m)
typeof(m)
v1
rm(v1)  #delete an object
v1
rm(c(v1,v2))  #error
ls()  #list the created objects
rm(y)
ls()

rm(list = ls())  #will remove all the objects
rm(v6,v7)  #will remove mentioned values
ls()

#create matrix without matrix function
m1 <- cbind(c(1,2,3),c(5,6,7))   #cbind is used to add a column it will overwrite the existing values
m1
class(m1)

m2 <- rbind(c(3,4,5),c(5,6,7),c(3,6));m2

mat

dimnames(mat)
mat <-cbind(mat,c(34,45,56))  #this will not overwrite the existing value
mat
class(mat)
dimnames(mat)
mat <- rbind(mat, c(2,4,5,8))
mat
dimnames(mat)<- list(c("r1","r2","r3","r4","r5","r6"),
                      c("c1","c2","c3","c4","c5"))

m2 = matrix(data = data.frame(),
            nrow = 3, ncol = 3,
            dimnames = list(c("r1","r2","r3"),
                            c("c1","c2","c3")))                 
m2       

m3<- matrix(,
                nrow = 3, ncol = 3,
                dimnames = list(c("r1","r2","r3"),
                                c("c1","c2","c3"))) 
m3


(i <- matrix(1:10, ncol = 2, nrow = 5))
(j <- matrix(11:20, ncol = 2, nrow = 5))
i+j
i-j
i*j
i%*%j
i/j
i%/%j
i%%j
k <-t(i);k #transpose;
i+k  #error non-comformable array
i*k
i%%k
i%*%k

