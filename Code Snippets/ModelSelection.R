#__Model Selection__
  Note: Our R code for model selection was working just fine. However, RMarkdown does not like it for whatever reason. Thus, this section will show pictures of the results, with the code and the graphs in the pictures.
```{r}
# classification models [Logistic, LDA,QDA, KNN]
#Define Data Location
srcFile <- 'clean_listings_summary1.csv'
datin <- read.csv(srcFile, header=T)
rdata<-datin[c(6:12,14:16)]
rdata$neighbPIN<-factor(rdata$neighbPIN) #changing to factor
rdata<-rdata[which(rdata$neighbPIN!='78733'),]
rdata=na.omit(rdata)
summary(rdata)
```

```{r,include=FALSE}
detach(df)
attach(rdata)
```
