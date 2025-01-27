install.packages("corrplot")
library(corrplot)
library(ggplot2)
data1<-swiss
View(swiss)
head(data1,4)


ggplot(data1,aes(x = Fertility, y = Infant.Mortality))+ geom_point() + 
  geom_smooth(method = "lm", se = TRUE, color = "black")


#few attributes(2)
cor_mat = cor(data1)
Tes <- cor.test(swiss$Fertility,swiss$Infant.Mortality, method = "pearson")
Tes
corrplot(cor_mat, method = "circle")
