#collection of homogeneous elements(linked list)
#consists of levels
#Levels are clusters of unique values of the data
#case sensitive
# types of factors- ordered(comparable) and unordered(non-comparable)
(v1 <- c("e","w","n","s","e"))  #this is a vector
(r1 <- factor(c("e","w","n","s","e")))  #this is a factor
str(r1)
summary(r1) #by default unordered factor(alphabetically arranged levels)
r1[6]<-"f"  #not matching the cluster with previous data
r1
r1[6]<-"s"

levels(r1) <- c(levels(r1), "f")
r1[6]<-"f"
r1
levels(r1)

table(r1)   #values corresponding to different levels
r1[2]
r1[3]<-"w"
class(r1)
typeof(r1)


x = sample(0:999,250,replace = F)  #replace default false
x
?sample
sample(10,5)
sample(3,5,replace = T)
sample(3,5,replace = T,prob = c(0.5,0.5,1.2))  #won't give error
sample(0:200,500)    #error
sample(0:200,500, replace = T)
s<-sample(0:4,50,replace = T, prob = c(0.8,0.8,0.1,0.3,0.6))
s
?set.seed
set.seed(1234) #allocate hash memory, naming a buffer where random function is storing values
(a<-sample(0:4,10, replace = T))
