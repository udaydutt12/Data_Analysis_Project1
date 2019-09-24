
# K Nearest Neighbors

#attach(rdata)

#Normalize input values as they differ in scale
summary(revPerMonth)
n_revPerMonth=(revPerMonth-min(revPerMonth))/(max(revPerMonth)-min(revPerMonth))
n_avail365=(avail365-min(avail365))/(max(avail365)-min(avail365))
Xval=cbind(n_revPerMonth,n_avail365)
train=c(1:3033)
knn.pred=knn(Xval[train,],Xval[-train,],rmPrice[train],k=1)
table(knn.pred,rmPrice[-train])
mean(knn.pred==rmPrice[-train])

# The k nearest neighbors model of classification is a method that is based on machine learning
# that depends on the value of k for accuracy. During the training portion of the algorithm,
# the algorithm is trained by looking around using training data that is already classified.
# The larger the value of k, the larger the search radius that the algorithm will use.
# In our case, the K-nearest neighbor analysis was able to predict categories by utilizing nearby factors. 
# In our dataset, we want to predict the price of a room by using "reviews per month" and "availability". 
# This K nearest neighbors model was not that accurate, as shown by the confusion matrix, and the 58.33% accuracy.
