mydata=read.csv("C://Users//WarHead//Desktop//rr//Resort_Visit.csv")
mydata
attach(mydata)

visit=Resort_Visit
income=Family_Income
attitude=Attitude.Towards.Travel
importance=Importance_Vacation
size=House_Size
age=Age._Head


visit=factor(visit)

cor(mydata)

aggregate(income ~visit, FUN = mean) 
aggregate(attitude ~visit, FUN = mean) 
aggregate(importance ~visit, FUN = mean) 
aggregate(size ~visit, FUN = mean)
aggregate(age ~visit, FUN = mean)

boxplot(income ~ visit) 
boxplot(attitude ~ visit)
boxplot(importance ~ visit) 
boxplot(size ~ visit) 
boxplot(age ~ visit)

model = glm(visit ~ income + attitude + importance + size + age, family = binomial(logit)) 


predict(model,type='response')

residuals(model,type = 'deviance')

predclass=ifelse(predict(model,type='response')>0.5,"1","0")

mytable=table(visit,predclass)
mytable
prop.table(mytable)
