install.packages('dplyr')
library(dplyr)#OR
require(dplyr)
?dplyr

names(mtcars)   #give names of columns
select(mtcars,mpg,am)
filter(mtcars, cyl>5)

#use of pipe symbol
mtcars %>% select(mpg,cyl)%>%filter(cyl>5)
select(mtcars,mpg,cyl)%>%filter(cyl>5)

#deplyr functions
# 1.Select: Use to project data
# 2.Filter  Use to filter the data
# 3.Mutate  Used to add columns to the predefined Data
# 4.Summarize Used to summarize the data using Aggregate functions
# 5.Arrange
# 6.Groupby
# 7.Pipe Sign %>%

View(mtcars) 
?mtcars
str(mtcars)

#using select keyword
#attributes are not case sensitive but functions are.
select(mtcars,cyl,hp)%>%View
select(mtcars,-am)%>%View
select(mtcars,am:cyl)%>%View
select(mtcars,starts_with("c"))%>%View 
select(mtcars,ends_with("c"))%>%View
select(mtcars,starts_with("c"))%>%View
select(mtcars,starts_with("p"))%>%View
select(mtcars,contains("t"))%>%View
select(mtcars,contains("at"))%>%View


#using filter keyword
filter(mtcars, am==0)%>%View
filter(mtcars, am==0 | cyl == 4)%>%View
filter(mtcars, am==0, cyl == 4)%>%View  #, and & give are the same.
filter(mtcars, am==0 & cyl == 4)%>%View


mtcar <- mtcars
mtcar <- mutate(mtcar, carmodel = row.names(mtcar))
row.names(mtcar) <- NULL
View(mtcar)
mtcar <- mtcar %>% mutate(mpg100 = mpg*100)
View(mtcar)


View(filter(mtcar, am == 0)%>% select(cyl, am, mpg))
mtcar %>%select(cyl, hp, mpg) %>% filter(am == 0) #will give error because am us not present in select

#using %>% sign, select keyword

filter(mtcars,row.names(mtcars) %in% c('Mazda RX4', 'Merc 450SL'))%>% select(mpg,cyl)

                         