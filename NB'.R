install.packages("e1071")
library(e1071)

data(iris)
iris
attach(iris)
iris[1,]

range(Sepal.Length)
range(Sepal.Width)
range(Petal.Length)
range(Petal.Width)

model=naiveBayes(Species~.,data=iris)
sample=data.frame(Sepal.Length=6.0,Sepal.Width=2.9,Petal.Length=4.5,Petal.Width=1.5)


predict(model,sample)
