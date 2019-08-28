#### __Best Subsets Using Leaps__

([See Insight](https://data.world/yeeunchoi/f-17-eda-project-3/insights/64903b9e-7dd4-45f1-990d-2689997782d0))

> regfit.full=regsubsets(price~.,data=rdata, nvmax=9)
> reg.summary=summary(regfit.full)
> names(reg.summary)

[1] "which"  "rsq"    "rss"    "adjr2"  "cp"     "bic"    "outmat" "obj"   

> plot(reg.summary$cp,xlab="Number of Variables",ylab="Cp")

![](cpgraph.png)

plot(regfit.full,scale="Cp")

![](regfitfull.png)


* These are the coefficients of the best model containing 9 variables (5 of 
them belongs to neighborhood and two of them belongs to rmType)  and one constant. It can be noted that out of 40 neighborhood PINs only 5 of them are selected as can also be seen from the following plot. Briefly, this model can be written as:

price~ neighbPIN+rmType+ revPerMonth+ avail365

* If we do Forward Stepwise Selection, we get the same results:

> plot(regfit.fwd,scale="Cp")

![](regfitfull.png)
