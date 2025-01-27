#syntax
#function_name <- function(arguments){body}

q1 = function(a=6,b=0){
  print(a)
  z=a+b
  print(z)
}
#function calling
q1()
q1(b=3)
q1(5)
q1(3,4)

#three dots means user can enter n number of arguments
addsum<-function(x,...){
  args <-list(...)
  for(a in args){ 
    x<-x+a
  }
  print(x)
}
addsum(0,2,3,4,5,6,7,8)
