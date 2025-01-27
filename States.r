st <-read.csv("C:/Users/satak/Downloads/STATES.csv")
getwd()
st1<-read.csv("STATES.csv")
View(st)

setwd("C:/Users/satak/Downloads")
States <- read.csv(file.choose())  #Importing NA file
View(States)
str(States)
summary(States)
is.na(States)  #used in iteration

View(States[!complete.cases(States),])  #viewing only NA data values
States[c(7,15,23,26),]

S1=States
View(S1[!complete.cases(S1),])
nrow(S1)
nrow(S1[!complete.cases(S1),])
S1=na.omit(S1)   #all NA rows will be omitted from data set(least prefered method for large dataset)
View(S1)
