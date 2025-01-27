#gather - converts wide data to longer format
#spread - converts long data to wider format
#unite combines two or more columns into a single column
#separate - splits one column into two or more columns

install.packages("tidyr")
require(tidyr)
require(dplyr)
View(mtcars)
mt <- mtcars

?gather
#gather(data, key, value,...., na.rm = F, convert = F)
mtNew <- gather(mt, nm, value, mpg:gear)
View(mtNew)


#unite
Date<-as.Date('2016-01-01')+0:14
hour <-sample(1:24, 15)
min <- sample(1:60,15)
second<-sample(1:60,15)
Date
event <-sample(letters, 15)
data <- data.frame()
View(data)

dataNew <-data %>% 
  unite(datehour, date, hour, sep = ' ') %>%
  unite(datetime, datehour, event, sep = ' ')


data1<- dataNew %>%
  separate(datetine, c('date', 'time'). sep = ' ') %>%
  separate(time, c('hour', event),sep = '_')
View(data1)


data<-read.csv("C:\\Users\\satak\\Downloads\\bill data for tidyr.csv")
d<-read.csv(file.choose())
View(d)
newData <- data%>%unite(CS,city, state, sep = '#')
View(newData)
sp_data <- newData %>% separate(CS, c("city","state"),sep = '#')
View(sp_data)

newD <- gather(d, billtype, billamt, gasbill:waterbill)
View(newD)

datasep <- separate(data, Data, c("Day", "Month", "Year"), sep ="-")
(dataunite <- unite(datasep, Date, c ("Day", "Month", "Year"), sep = "/"))
