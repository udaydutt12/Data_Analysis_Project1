# Best Subsets Using Leaps

regfit.full=regsubsets(price~.,data=rdata, nvmax=9)
reg.summary=summary(regfit.full)
names(reg.summary)
plot(reg.summary$cp,xlab="Number of Variables",ylab="Cp")
plot(regfit.full,scale="Cp")

# These are the coefficients of the best model containing 9 variables 
# (5 of them belong to neighborhood and two of them belongs to rmType)  and one constant. 
# It can be noted that out of 40 neighborhood PINs only 5 of them are selected as can also
# be seen from the following plot. Briefly, this model can be written as:
price~ neighbPIN+rmType+ revPerMonth+ avail365

#If we do Forward Stepwise Selection, we get the same results:
plot(regfit.fwd,scale="Cp")