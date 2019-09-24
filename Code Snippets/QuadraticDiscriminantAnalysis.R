# Quadratic Discriminant Analysis (QDA)

qda.fit=qda(rmPrice~rmType+revPerMonth+
              avail365, data=rdata, subset=train)
qda.fit
test_data=rdata$rmPrice[-train]
length(test_data)
qda.pred=predict(qda.fit,newdata=rdata[-train,])
data.frame(qda.pred)[1:5,]
table(qda.pred$class,test_data)
mean(qda.pred$class==test_data)

# To predict the room price as Low or High using three explanatory variables, namely "room type", "reviews per month"
# and "availability", we produced a Quadratic discriminant analysis model, and then tested its accuracy.

# The accuracy of the Quadratic Discriminant analysis model is 70.51%. For reasons similar to LDA,
# the confusion matrix shows that we are predicting correctly most of the time.
