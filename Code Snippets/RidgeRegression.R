#### __Ridge Regression__

* ([See Insight](https://data.world/yeeunchoi/f-17-eda-project-3/insights/9002e268-aff5-476d-bff1-25bc0bf38938)) It appears that the dataset doesn't suffers from any collinearity issues. Thus, ridge regression may not be required in this particular case. But we will do ridge regression anyways.

> x=model.matrix(price~.-1,data=rdata) 
> y=rdata$price
> fit.ridge=glmnet(x,y,alpha=0)
> plot(fit.ridge,xvar="lambda",label=TRUE)
> cv.ridge=cv.glmnet(x,y,alpha=0)
> plot(cv.ridge)
> fit.ridge=glmnet(x,y,alpha=0)
> plot(fit.ridge,xvar="lambda",label=TRUE)
> cv.ridge=cv.glmnet(x,y,alpha=0)
> plot(cv.ridge)


![](ridge1.png)


![](ridge2.png)
