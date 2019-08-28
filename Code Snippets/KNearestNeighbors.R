
# __K Nearest Neighbors__

([See Insight #1](https://data.world/yeeunchoi/f-17-eda-project-3/insights/56969cd9-d253-421f-baed-0ba5896b7c42),[See Insight #2](https://data.world/yeeunchoi/f-17-eda-project-3/insights/8e2de7ed-9867-468b-8b70-a6383d66be14),[See Insight #3](https://data.world/yeeunchoi/f-17-eda-project-3/insights/461b1bd4-fd15-4700-b7e7-befe58461d41),[See Insight #4](https://data.world/yeeunchoi/f-17-eda-project-3/insights/94a7553a-99de-42bf-bb91-9bbb6d940a47), these insights attempt to predict room type instead of price, but they are still valuable insights)

```{r}
#attach(rdata)
#Normalize input values as they differ in scale
summary(revPerMonth)
n_revPerMonth=(revPerMonth-min(revPerMonth))/(max(revPerMonth)-min(revPerMonth))
n_avail365=(avail365-min(avail365))/(max(avail365)-min(avail365))
Xval=cbind(n_revPerMonth,n_avail365)
train=c(1:3033)
#Xval[train,]
knn.pred=knn(Xval[train,],Xval[-train,],rmPrice[train],k=1)
table(knn.pred,rmPrice[-train])
mean(knn.pred==rmPrice[-train])
```

The k nearest neighbors model of classification is a method that is based on machine learning that depends on the value of k for accuracy. During the training portion of the algorithm, the alogrithm is trained by looking around using training data that are already classified. The larger the value of k, the larger the search radius that the algorithm will use. In our case, the K-nearest neighbor analysis was able to predict categories by utilizing nearby factors. In our dataset, we want to predict the price of a room by using "reviews per month" and "availability". This K nearest neighbors model was not that accurate, as shown by the confusion matrix, and the 58.33% accuracy.
