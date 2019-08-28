
# __Logistic Regression__
```{r}
#rdata$rmPrice[rdata$nlprice >0.5] <- "High"
#rdata$rmPrice[rdata$nlprice <= 0.5] <- "Low"
rdata$lprice<-log(rdata$price)
rdata$nlprice=(rdata$lprice-min(rdata$lprice))/(max(rdata$lprice)-min(rdata$lprice))

rmPrice=ifelse(rdata$nlprice>0.5,"High","Low")
#Model Selection
rdata<-cbind(rdata, rmPrice)
rdata$rmPrice<-factor(rdata$rmPrice)
# Logistic regression

glm.fit=glm(rmPrice~rmType+revPerMonth+
            avail365, data=rdata,family=binomial)
summary(glm.fit)
glm.probs=predict(glm.fit,type="response") 
glm.probs[1:5]
summary(glm.probs)
glm.pred=ifelse(glm.probs>0.5,"High","Low")

#attach(rdata)
table(glm.pred,rmPrice)
mean(glm.pred==rmPrice)
# Make training and test set
dim(rdata)
set.seed(1099)#3813,3033
train=sample(seq(3813),3033,replace=FALSE)#about 80% data was selected as training data
length(train)

glm.fit=glm(rmPrice~rmType+revPerMonth+
              avail365, data=rdata,family=binomial, subset=train)
glm.probs=predict(glm.fit,newdata=rdata[-train,],type="response") 
glm.pred=ifelse(glm.probs >0.5,"High","Low")
test_data=rdata$rmPrice[-train]
table(glm.pred,test_data)
mean(glm.pred==test_data)

```
For logistic regression, we change price to either Low or high. First, we normalized the prices to be in between 0 and 1. Then, we made above a 0.5=High, and less than a 0.5=Low.
The probability of accurately predicting internet usage level was only 23.33%. The probability value are relatively low, as the data is not that strongly related.
