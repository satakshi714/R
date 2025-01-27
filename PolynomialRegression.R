data <- read.csv(file.choose(),sep=',',header = T)
View(data)
data <- data[2:3]
data
data
#fitting linear regression to the dataset
lin_reg <- lm(formula = Salary ~ .,
              data=data)
summary(lin_reg)

#fitting polynomial regression to the dataset
data$Level2 = data$Level^2
data$Level3 = data$Level^3
data$Level4 = data$Level^4
data
poly_reg <- lm(formula = Salary ~ .,
               data = data)
summary(poly_reg)

#Visulaising the linear regression results
library(ggplot2)
ggplot()+
  geom_point(aes(x=data$Level, y = data$Salary),
             color='red')+
  geom_point(aes(x=data$Level, y = predict(lin_reg, newdata = data)),
             color='blue')+
  ggtitle("Truth of Bluff(Linear Regression)") +
  xlab('Level')+
  ylab("Salary")

#Visulaising the polynomial regression results
ggplot()+
  geom_point(aes(x=data$Level, y = data$Salary),
             color='red')+
  geom_point(aes(x=data$Level, y = predict(poly_reg, newdata = data)),
             color='blue')+
  ggtitle("Truth of Bluff(Polynomial Regression)") +
  xlab('Level')+
  ylab("Salary")

#predicting a new result with a Linear Regression
predicts(lin_reg,data.frame(Level = 6.5)
#predicting a new result with a Polynomial Regression
predicts(poly_reg,data.frame(Level = 6.5,
                            Level2 = 6.5^2,
                            Level3 = 6.5^3,
                            Level4 = 6.5^4)


