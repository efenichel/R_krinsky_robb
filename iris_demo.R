#KR Demo
#This Demo uses the Iris dataset just to show how the KR bootstrap works. 

#Load the krCI function and the iris data. 
source('krinsky_robb.R')
data('iris')

#run a regression
reg1 <- lm(Petal.Length ~ Petal.Width + Sepal.Length + Sepal.Width, data = iris )

#See the regression summary
summary(reg1)


#Imagine you need the ratio of coefficent on Sepal.Width/Sepal.Length
reg1$coefficients[3]/reg1$coefficients[2]

#Use the krCI function to get the confidence interval for that ratio. 
krCI(mean = reg1$coefficients, 
     vcm = vcov(reg1), 
     num = 3, dem = 2, 
     draws = 1000, 
     ci = 0.95)[1]

#Use krCI(...)[2] to get all the KR draws. 
