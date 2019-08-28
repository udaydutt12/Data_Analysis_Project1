#__Quadratic Discriminant Analysis__

([See Insight](https://data.world/yeeunchoi/f-17-eda-project-3/insights/452027f0-418f-43e3-b8b2-7dd04da3abe0), this insight attempts to predict room type and not price, but is still a valuable QDA insight)

```{r}
qda.fit=qda(rmPrice~rmType+revPerMonth+
              avail365, data=rdata, subset=train)
qda.fit
test_data=rdata$rmPrice[-train]
length(test_data)
qda.pred=predict(qda.fit,newdata=rdata[-train,])
data.frame(qda.pred)[1:5,]
table(qda.pred$class,test_data)
mean(qda.pred$class==test_data)
```
To predict the room price as Low or High using three explanatory variables, namely "room type", "reviews per month" and "availability", we produced a Quadratic discriminant analysis model, and then tested its accuracy.

The accuracy of the Quadratic Discriminant analysis model is 70.51%. FOr reasons similar to LDA, the confusion matrix shows that we are predicting correctly most of the time.
