#syntax
if(test_ext){   #if brace can start from the next line it will not give error but will require multiple times execution
  statement 
}else{     #shifting else on next line will give an error because else is part of if(error: unexpected else in else)
  statement
}

#example of if
x=10
if(x>0){
  print("Positive number")
}else{
  print("Negative number")
}

#syntax for else if
if(test_ext){   
  statement 
}else if(test_exp){     
  statement
}else{
  statement
}

#example for else if
x = 5+9i
if(is.character(x)){
  print("character")
}else if(is.complex(x)){
  print("complex")
}else if (x < 0){
  print("negative number")
}else if(x > 0){
  print("positive number")
}else{
  print("zero")
}


b=40L  #L = integer(case sensitive)
class(b)
if(is.integer(b)){
  print("integer")
}else if(is.numeric(b)){
  print("numeric")
}else{
  print("other")
}

#case sensitive search
z = c("How","When","Where","Good")
if("HOW" %in% z){    
  print("HOW is present")
}else if("How" %in% z){
  print("How is present")
}else{
  print("Not found")
}

#switch case 
a=1
switch(a,"9"=sum(5,4),"1" = "3","2"="Hi")
switch(a,sum(5,4), "3","Hi")

#user input
a <-readline("Enter numeric value: ")
a <-readline(prompt = "Enter numeric value: ")    #takes character value
as.integer(a)    #converts string into integer
a <-as.integer(readline(prompt = "Enter numeric value: "));a

n1 <-readline(prompt = "Enter numeric value: ")
n2 <-readline(prompt = "Enter numeric value: ")
s <-readline("Enter operator: [1-ADD,2-SUB,3-MUL,4-DIV,5-EXP,6-INT DIV, 7<-REM]  ")

switch(s,
       "1" = cat("Addition is: ",n1+n2 ),
       "2" = cat("Subtraction is: ", n1-n2 ),
       "3" = cat("Multiplication is: ",n1*n2),
       "4" = cat("Division is: " ,n1/n2 ),
       "5" = cat("Exponent is: ",n1^n2 ),
       "6" = cat("Integer division is: ",n1n2 ),
       "7" = cat("Remainder is: ",n1%%n2 ),
       print("Wrong operator"))