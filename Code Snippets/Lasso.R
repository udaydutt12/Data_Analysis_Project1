####__Lasso Method__

* ([See Insight](https://data.world/yeeunchoi/f-17-eda-project-3/insights/7fee63b2-9779-451a-939f-942aeacd9c33))

> fit.lasso=glmnet(x,y)

> plot(fit.lasso,xvar="lambda",label=TRUE)

> cv.lasso=cv.glmnet(x,y)

> plot(cv.lasso)

> coef(cv.lasso)

51 x 1 sparse Matrix of class "dgCMatrix"
                              1
(Intercept)         279.0250281
neighbPIN78701       19.2854990
neighbPIN78702       42.4473047
neighbPIN78703       38.9049960
neighbPIN78704       13.9533243
neighbPIN78705       -5.3721792
neighbPIN78717        .        
neighbPIN78721        .        
neighbPIN78722        .        
neighbPIN78723        .        
neighbPIN78724        .        
neighbPIN78725        .        
neighbPIN78726        .        
neighbPIN78727        .        
neighbPIN78728        .        
neighbPIN78729        .        
neighbPIN78730        7.7861928
neighbPIN78731       12.7856331
neighbPIN78732       39.6132701
neighbPIN78733        .        
neighbPIN78734       55.8608265
neighbPIN78735        .        
neighbPIN78736        .        
neighbPIN78737        .        
neighbPIN78738        .        
neighbPIN78739        .        
neighbPIN78741        .        
neighbPIN78744        .        
neighbPIN78745       -3.1601577
neighbPIN78746        .        
neighbPIN78747        .        
neighbPIN78748        .        
neighbPIN78749        .        
neighbPIN78750        .        
neighbPIN78751      -22.8555069
neighbPIN78752        .        
neighbPIN78753        .        
neighbPIN78754        .        
neighbPIN78756        .        
neighbPIN78757        .        
neighbPIN78758        .        
neighbPIN78759        .        
lat                   .        
long                  .        
rmTypePrivate room -165.7359264
rmTypeShared room  -136.7730788
minNights             .        
numReviews           -0.2461605
revPerMonth         -30.8399847
calHostListCount      .        
avail365              0.1067613

> lasso.tr=glmnet(x[train,],y[train])

> lasso.tr


Call:  glmnet(x = x[train, ], y = y[train]) 

      Df    %Dev   Lambda
 [1,]  0 0.00000 85.66000
 [2,]  1 0.01874 78.05000
 [3,]  1 0.03429 71.12000
 [4,]  2 0.05337 64.80000
 [5,]  2 0.07369 59.05000
 [6,]  2 0.09056 53.80000
 [7,]  2 0.10460 49.02000
 [8,]  2 0.11620 44.67000
 [9,]  2 0.12590 40.70000
[10,]  2 0.13390 37.08000
[11,]  2 0.14050 33.79000
[12,]  2 0.14610 30.79000
[13,]  2 0.15060 28.05000
[14,]  3 0.15580 25.56000
[15,]  4 0.16240 23.29000
[16,]  5 0.16800 21.22000
[17,]  5 0.17350 19.33000
[18,]  7 0.17870 17.62000
[19,]  9 0.18450 16.05000
[20,]  9 0.18990 14.63000
[21,] 13 0.19520 13.33000
[22,] 15 0.20130 12.14000
[23,] 17 0.20750 11.06000
[24,] 17 0.21280 10.08000
[25,] 18 0.21720  9.18600
[26,] 19 0.22100  8.37000
[27,] 21 0.22440  7.62600
[28,] 21 0.22740  6.94900
[29,] 22 0.22990  6.33100
[30,] 23 0.23210  5.76900
[31,] 25 0.23410  5.25600
[32,] 26 0.23590  4.78900
[33,] 26 0.23740  4.36400
[34,] 26 0.23870  3.97600
[35,] 26 0.23970  3.62300
[36,] 26 0.24060  3.30100
[37,] 28 0.24140  3.00800
[38,] 31 0.24200  2.74100
[39,] 32 0.24260  2.49700
[40,] 33 0.24310  2.27500
[41,] 35 0.24360  2.07300
[42,] 36 0.24410  1.88900
[43,] 38 0.24450  1.72100
[44,] 40 0.24490  1.56800
[45,] 41 0.24530  1.42900
[46,] 42 0.24560  1.30200
[47,] 42 0.24590  1.18600
[48,] 43 0.24620  1.08100
[49,] 43 0.24640  0.98490
[50,] 43 0.24660  0.89740
[51,] 44 0.24680  0.81770
[52,] 44 0.24700  0.74510
[53,] 44 0.24710  0.67890
[54,] 46 0.24720  0.61860
[55,] 47 0.24730  0.56360
[56,] 47 0.24750  0.51350
[57,] 47 0.24750  0.46790
[58,] 48 0.24760  0.42640
[59,] 49 0.24770  0.38850
[60,] 49 0.24780  0.35400
[61,] 50 0.24780  0.32250
[62,] 50 0.24790  0.29390
[63,] 50 0.24790  0.26780
[64,] 50 0.24790  0.24400
[65,] 50 0.24790  0.22230
[66,] 50 0.24800  0.20260
[67,] 49 0.24800  0.18460
[68,] 49 0.24800  0.16820
[69,] 49 0.24800  0.15320
[70,] 49 0.24800  0.13960
[71,] 49 0.24800  0.12720
[72,] 49 0.24800  0.11590
[73,] 49 0.24800  0.10560
[74,] 49 0.24810  0.09623
[75,] 50 0.24810  0.08768
[76,] 50 0.24810  0.07989
[77,] 50 0.24810  0.07279
[78,] 49 0.24810  0.06633
[79,] 49 0.24810  0.06043

> pred=predict(lasso.tr,x[-train,])
> rmse= sqrt(apply((y[-train]-pred)^2,2,mean))
> plot(log(lasso.tr$lambda),rmse,type="b",xlab="Log(lambda)")



> lam.best=lasso.tr$lambda[order(rmse)[1]]
> lam.best

[1] 1.889025


> coef(lasso.tr,s=lam.best)

51 x 1 sparse Matrix of class "dgCMatrix"
                               1
(Intercept)        -7789.6851874

neighbPIN78701       102.2931576

neighbPIN78702        98.7847735

neighbPIN78703        89.8817762

neighbPIN78704        55.3953645

neighbPIN78705       -22.4030894

neighbPIN78717         .        

neighbPIN78721       -24.7275688

neighbPIN78722         .        

neighbPIN78723        33.2778159

neighbPIN78724         .        

neighbPIN78725         .        

neighbPIN78726         .        

neighbPIN78727         .        

neighbPIN78728         .        

neighbPIN78729         .        

neighbPIN78730       239.3499163

neighbPIN78731       112.3251769

neighbPIN78732       202.4177402

neighbPIN78733       -61.5877811

neighbPIN78734       231.6376847

neighbPIN78735       -15.7180524

neighbPIN78736        -8.3298800

neighbPIN78737       -28.2790509

neighbPIN78738        -8.8680921

neighbPIN78739         .        

neighbPIN78741        -5.0708995

neighbPIN78744       -26.2402382

neighbPIN78745        -9.9106256

neighbPIN78746        57.5715909

neighbPIN78747         7.5036757

neighbPIN78748         .        

neighbPIN78749         .        

neighbPIN78750         .        

neighbPIN78751       -37.4209792

neighbPIN78752        -4.6343988

neighbPIN78753        24.7771582

neighbPIN78754         .        

neighbPIN78756       -28.0352033

neighbPIN78757       -28.7885433

neighbPIN78758       -23.2282654

neighbPIN78759       -14.6345029

lat                   43.3399357

long                 -68.8331727

rmTypePrivate room  -171.4213512

rmTypeShared room   -181.9969631

minNights              .        

numReviews            -0.5781201

revPerMonth          -33.2594380

calHostListCount      -2.3917369

avail365               0.1609732


![](lasso1.png)


![](lasso2.png)

![](lasso3.png)
