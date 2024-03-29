# Linear Discriminant Analysis (LDA)

lda.fit=lda(rmPrice~rmType+revPerMonth+
              avail365, data=rdata, subset=train)
lda.fit
plot(lda.fit)
test_data=rdata$rmPrice[-train]
length(test_data)
lda.pred=predict(lda.fit,newdata=rdata[-train,])
data.frame(lda.pred)[1:5,]
table(lda.pred$class,test_data)
mean(lda.pred$class==test_data)

# To predict the room price as Low or High using three explanatory variables, namely "room type", "reviews per month" and "availability",
# we produced a linear discriminant analysis model, and then tested its accuracy.
# The accuracy of the Linear Discriminant analysis model is 77.18%, which is very high for a bad dataset like this one. 
# This LDA accuracy is due to the transformed price that we did earlier, and also the relatively high prior probability of 62.18% for Low.
# The confusion matrix shows that we are predicting correctly most of the time.
