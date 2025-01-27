#*****FUNCTIONS*****#
#Function_Name = function(parameters){
#function body
#}

hello_world = function()
{
  "Hello world!"
}
print(hello_world)

Sum_two_Num=function(x,y)
{
  x+y
}
print(Sum_two_Num(10,12))

#It is possible to drop curly braces if the function body contains a single statement
Sum_two_Num=function(x,y) x+y
print(Sum_two_Num(10,12))

vector = c(3,5,2,3,1,4)
min_fun = function(x)
{
  return(min(x))
}
max_fun=function(x)
{
  return(max(x)) 
  
}

print(min_fun(vector))
print(max_fun(vector))

#Q. Create a function in R to find circumference of a circle
r = 2
cir=function(r)
{
  return(2*3.14*r)
}
print(cir(r))

#Q. Create a functio to find mean and median of vector

vector=c(1,2,3,4,5,6)
me=function(x)
{
  return(mean(x))
}
med=function(x)
{
  return(median(x))
}

print(me(vector))
print(med(vector))


#Q. Create a function to find(BMR as per formula : (10*weight) + (6.25*height) -(5*age) - 161
w=60
h=165
age=30
bmr = function(x,y,z)
{
  return((10*x)+(6.25*y)-(5*z)-161)
}

print(bmr(w,h,age))

#Q. Create a function to print x raised to the power y.
x=2
y=2
pow=function(x,y)
{
  print(paste(x," raised to the power ",y," is ",x^y))
}
pow(x,y)

iris

#Q. Create a dataframe which should consist of 2 columns: Species (Distinct Species) and Abbreviation(S,Ve,Vi)
Abbreviation=c("S","Ve","Vi")
d1=data.frame(levels(iris$Species),Abbreviation)
d1

#Q. Create a dataframe consist of 3 columns : emp,sal
Name = LETTERS[1:24]
Salary =c(1:24)
d2=data.frame(Name,Salary)
d2


#******REPEAT FUNCTION******#
rep(3.5,times=10)
rep(1:4,each=2)
rep(x,y,times=3)
x=2
rep(x,each=3)
rep(1:4,each=2,times=3)

#Q. Create a dataframe consist of 3 columns : emp,sal,Dept
Name = LETTERS[1:24]
Salary =c(1:24)
Dept=rep(c("A","B","C"),each=8)
d2=data.frame(Name,Salary,Dept)
d2

  