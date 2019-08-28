#### __Normality Testing__

Now, we will inspect the normality of the price variable using the Shaprio-Wilk test for normality. Afterwards, we will plot the QQ plot, and inspect the linearity of the plot. Normal QQ plots are relatively linear.

```{r}
# create new dataset without missing data 
df <- na.omit(mydata)
```

```{r,include=FALSE}
detach(mydata)
attach(df)
```
```{r}
ggplot(data = df, aes(sample = price, color = room_type)) +
  stat_qq(cex = 1.2)+labs(title = 'Normality Test for Price',
     x = 'Theoretical Quantiles',y = 'Price')

qqnorm(price)			# Normal probability plot for original variable
shapiro.test(price)
shapiro.test(log(price))

boxcox(price~1,lambda=seq(-5,5,0.01)) # Illustration of Log-Likelihood profile
p<-powerTransform(price)    # Estimaton of Box-Cox lambda [y=(x^lambda-1)/lambda]
p # Write the value of Box-Cox lambda
tprice<-bcPower(price,p$lambda)	# Box-Cox transformation
shapiro.test(tprice)
df$tprice<-tprice
str(df)

```


We ran the Shapiro-Wilk test on the regular dataset and got p<2.2e-16 and a curved QQ plot. This means that the regular dataset is not fit for regression. Then, we transformed the price data into the log(price) and still got p<2.2e-16. Afterwards, we used the Box-Cox transformation to transform price and got a lambda value of -0.15, and p=3.038e-6. This p value is 10^10 times better than the p value for the first two tests. However, this p-value is still pretty low. This is most likely due to the incredibly high degree of freedom ([see insight](https://data.world/yeeunchoi/f-17-eda-project-3/insights/dba5730c-78d7-4517-8d7d-43397db91cb4))Yet, if we plot the transformed price, we get something linear:

```{r}
qqnorm(tprice)			# Normal probability plot for transformed variable
```

Thus, we will run multivariate regression on this transformed price 'tprice' and then select the best model using selection and shrinkage from there.