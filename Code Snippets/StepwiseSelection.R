#### __Stepwise Selection__

([See Insight](https://data.world/yeeunchoi/f-17-eda-project-3/insights/4b6e7619-fb7d-44db-9ef7-3f7fddc03475))

> fit <- lm(tprice ~neighbourhood+latitude*longitude+ room_type+minimum_nights+ 
+             number_of_reviews+reviews_per_month+
+             calculated_host_listings_count+availability_365, data=df)
> step <- stepAIC(fit, direction="both")
Start:  AIC=-10469.4
tprice ~ neighbourhood + latitude * longitude + room_type + minimum_nights + 
    number_of_reviews + reviews_per_month + calculated_host_listings_count + 
    availability_365

                                  Df Sum of Sq    RSS      AIC
                                  
<none>                                        241.42 -10469.4

- latitude:longitude              1     0.331 241.75 -10466.2

- minimum_nights                  1     0.409 241.83 -10464.9

- calculated_host_listings_count  1     1.158 242.58 -10453.1

- number_of_reviews               1     2.325 243.74 -10434.7

- availability_365                1     4.929 246.35 -10394.1

- reviews_per_month               1    23.715 265.13 -10112.9

- neighbourhood                  40    35.200 276.62 -10028.7

- room_type                       2   140.802 382.22  -8715.5

> step$anova # display results

* Initial Model:
tprice ~ neighbourhood + latitude * longitude + room_type + minimum_nights + 
    number_of_reviews + reviews_per_month + calculated_host_listings_count + 
    availability_365

* Final Model:
tprice ~ neighbourhood + latitude * longitude + room_type + minimum_nights + 
    number_of_reviews + reviews_per_month + calculated_host_listings_count + 
    availability_365


  Step Df Deviance Resid. Df Resid. Dev      AIC
  
1                       3775   241.4189 -10469.4


* Stepwise selection was not able to change the initial model. Hence, the initial model that contains all of the variables is the best model according to stepwise selection.
