#__Multiple Linear Regression__
([See Insight #1](https://data.world/yeeunchoi/f-17-eda-project-3/insights/2440a6db-db88-41a4-adf1-7264798404f0),[See Insight #2](https://data.world/yeeunchoi/f-17-eda-project-3/insights/e7b98530-e3b5-446f-9a0b-13cbfa990ea5),[See Insight #3](https://data.world/yeeunchoi/f-17-eda-project-3/insights/3a208e3c-a706-48f5-a0b6-b575a35b1e59))


```{r}
#Fitting a Multiple Regression Model
fit <- lm(tprice ~neighbourhood+latitude*longitude+ room_type+ 
          number_of_reviews+reviews_per_month+minimum_nights+
          calculated_host_listings_count+availability_365, data=df)
summary(fit) # show results
```

From this summary table, we see that minimum nights can be taken out because it is insignificant if we take a 1% significance level. In order to test this, we will test fit1 (full model) vs fit2 (full model without minimum nights). Our hypothesis will be as follows:

H0: Reduced model is a better model (i.e., Model #2)

H1: Full model is needed (i.e., Model #1) 

```{r}
# diagnostic plots 
plot(fit)

# compare models
fit1 <- lm(tprice ~neighbourhood+latitude*longitude+ room_type+minimum_nights+ 
                    number_of_reviews+reviews_per_month+
                    calculated_host_listings_count+availability_365, data=df)
fit2 <- lm(tprice ~neighbourhood+latitude*longitude+ room_type+ 
                    number_of_reviews+reviews_per_month+
                    calculated_host_listings_count+availability_365, data=df)
anova(fit1, fit2)
```

As the P-value is 1.15%, the null hypothesis, H0 is rejected using a significance level of 5% indicating that the full model (Model #1) is more appropriate. Thus, we will keep all 9 variables, and minimum nights will not be taken out. Next, we will try to take out variables using model selection, ridge regression and lasso.

-----------------------------------------------------------------