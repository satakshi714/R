#******LOOPS******#
#*For Loop
#*While Loop
#*Repeat Loop

# 1. For Loop
#if the number of repetitions is known in advance then a for() loop can be used.
#for(name in vector) {Commands to be executed}

for(x in 1:5){
  print(x)
}

#Q. Print 1 to 12 with month prefix
for(x in 1:12){
  print(paste("Month",x))       #we can use paste to concatenate.
}

#Q. TAKE A 3X3 MATRIX AND PRINT THE VALUES USING FOR LOOP

m1 = matrix(data=c(10,23,4,2,35,4,6,9,8),nrow=3,ncol=3)
m1
a=nrow(m1)
b=ncol(m1)
i=1
j=1

for(i in 1:a)
{
  for(j in 1:b)
  {
    print(m1[j,i])
  }
}


#Q. PRINT ONLY THOSE NAMES OF A VECTOR WHERE LENGTH IS MORE THAN 4

v1 = c("AYUSH","ANKIT","RAJ","SOHIL")
v1
for(i in v1)
{
  if(nchar(i) > 4)
  {
    print(i)
  }
}

# 2. While loop
#If the number of loops is not known in before then use while loop

i = 1
while(i<5){
  print(i^2)
  i=i+2
}



# 3. Repeat Loop
#The repeat loop doesn't test any condition so to come out of the loop we use break

repeat{
  a=1
  print(a^2)
  a=a+2
  if(i>10)
  {
    break
  }
}


v1=c("AYUSH","ADITYA","RAJ","SOHIL","Neha")

repeat{
  i=1
  if(nchar(v1[i]) > 3){
    print(v1[i])
  }
  i=i+1
  if(i>4)
  {
    break
  }
  
  
}


#ampritpal.17673@lpu.co.in(email)


#*******SEQUENCES*******#
seq(from=2,to=4)
seq(from=4,to=2)
seq(from=10,to=20,by=2)
seq(from=20,to=10,by=-2)
seq(from=3 ,to=-2,by=-0.5)
seq(to=10,length=10)
seq(from=10,length=10)
seq(from=10,length=5,by=-2)
seq(1:10)
Sys.time()   #System's time
Sys.date()   #System's date

seq(as.Date("2017-01-01"),by="days",length=6)
seq(as.Date("2010-01-01"),as.Date("2017-01-01"),by="years")




#*******PRACTICE*******#

#Q. Print whether given number is negative or positive
i=5
if(i<0)
{
  print("Number is Negative")
}else
{
  print("Number is Positive")
}

#Q. Print all the elements of vector if their length is above 5 else print element less than 5.
v = c(1,2,3,4,5,6,7)
if(length(v) < 5)
{
  print("Length is less than 5")
  
}else
{
  for( i in v)
  {
    print(v[i])
    
  }
}

#Q. Print all the attribute name of Data frame if their length is above 5 else print elements less than 5 attribute

d= data.frame(x1=1:4,x2=c("AYUSH","ADI","SHERAZ","AALU"))
d
length(d)
if(length(d) > 5)
{
  print(d)
}else
{
  print("Elements less than 5")
}

#Q. Print the number of elements in vector.
v1 = c(1,2,3,4,5,6,7)
print(length(v1))

#Q.Print datatype of every elemnts in vector
attach(mtcars)
v=length(mtcars)
v
i=0
mtcars
mtcars[0,1]

while(i < v)
{
  print(mtcars[1,i])
  i=i+1
}
i=1
j=1
for(i in 1:v)
{
  for(j in 1:v)
  {
    print(class(mtcars[i,j]))
  }
}

i=0
v=10
for(i in v)
{print(i)
}

#ifelse(test,yes,no)
#It is a function in R and the syntax is above.

x=1:10
ifelse(x<6,x^2,x+1)


#Switch Case
#switch(expression,case1,case2,case3,...,casen)

x=switch(2,"abc","xyz","pqr")
print(x)

y=switch("x1","y1"="R","z1"="PROG","x1"="PRAC")
print(y)

y=switch("x2","y1"="R","z1"="PROG","x1"="PRAC")
print(y)

data=read.csv(file.choose())
data


#1. Is the target sales is acheived or overcome by Gross sale in any month?
x <- function(data) {
  for(i in 1:nrow(data)) {
    if(data$Gross.sales[i] >= data$Target.sales[i]) {
      print("Achieved")
    } else {
      print("Not achieved")
    }
  }
}
x(data)

ifelse(data$Gross.sales>=data$Target.sales,"Acheived","Not achieved")

library(sqldf)
sqldf("Select Months from data where Gross.sales>=Target.sales")


#2. In which month users mostly prefer the ACME products
x=c()
z=function(data)
{
  for(i in 1:nrow(data))
  {
    x[i]=data$Gross.sales[i]
  }
  if(max(x))
  {
    print(data$Months[i])
  }
  
  print(max(x))
}
z(data)


#3. Do the investment on Ad costs and social net is related with each other
y = function(data)
{
  for(i in 1:nrow(data)){
    if(data$Ad.costs[i]==data$Social.network.costs[i])
    {
      print(data$Months[i])
    }
  }
}
y(data)


data2 = read.csv(file.choose())
data2

#1. How many olympic games have been held
sqldf("select count(distinct(Year)) from data2")


#2.Mention the total number of nations who participated in each olympics
sqldf("select distinct(Year),count(Country) from data2 group by Country")

#3. In how many olympic games,cricket was played
sqldf("select Year,count(distinct(Year)) from data2 where Sport = 'Cricket' ")
#sqldf("select Sport from data2 where Sport = 'Cricket' ")

#4. Which athlete has won most number of medals
sqldf("SELECT Athlete, COUNT(Medal) as MedalCount
FROM data2
GROUP BY Athlete
ORDER BY MedalCount DESC
LIMIT 1;
")

#5. Display the count of men and women athletes
sqldf("select count(Athlete) from data2 group by Gender order by count(Athlete) desc limit 2")

#6. How many disciplines were there in 1896 games
sqldf("select count(distinct(Discipline)) from data2 where Year='1896'")

#7. Which athlete has won the most number of medals in athlete
sqldf("SELECT Athlete, COUNT(Medal) as M
FROM data2
WHERE Sport='Athletics'
GROUP BY Athlete
ORDER BY M DESC
LIMIT 1;
")

#8. How many medals won by India in individual sport
sqldf("select Country,count(Medal) from data2 where Country='India' ")





