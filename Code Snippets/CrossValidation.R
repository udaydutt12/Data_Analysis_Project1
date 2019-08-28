#### __Cross Validation__

([See Insight](https://data.world/yeeunchoi/f-17-eda-project-3/insights/7089de22-69bb-4c4d-a61a-4716d87ae15e))

> predict.regsubsets=function(object,newdata,id,...){
+   form=as.formula(object$call[[2]])
+   mat=model.matrix(form,newdata)
+   coefi=coef(object,id=id)
+   mat[,names(coefi)]%*%coefi
+ }

> > set.seed(2789)
> folds=sample(rep(1:10,length=nrow(rdata)))
> table(folds)

folds
  1   2   3   4   5   6   7   8   9  10 
383 383 383 383 383 383 382 382 382 382 

> cv.errors=matrix(NA,10,9)
> for(k in 1:10){
+   best.fit=regsubsets(price~.,data=rdata[folds!=k,],nvmax=9,method="forward")
+   for(i in 1:9){
+     pred=predict(best.fit,rdata[folds==k,],id=i)
+     cv.errors[k,i]=mean( (rdata$price[folds==k]-pred)^2)
+   }
+ }

> rmse.cv=sqrt(apply(cv.errors,2,mean))
> plot(rmse.cv,pch=9,type="b")

![](sevenvariable.png)

* This plot is shows that it is possible to obtain a model using 7 variables. It is weird that this shows 7 variables, but we were not able to take away any variables when doing best subset selection.
