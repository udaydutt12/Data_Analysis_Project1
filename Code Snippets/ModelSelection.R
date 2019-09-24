# Model Selection

# classification models [Logistic, LDA,QDA, KNN]
# Define Data Location
srcFile <- 'clean_listings_summary1.csv'
datin <- read.csv(srcFile, header=T)
rdata<-datin[c(6:12,14:16)]
rdata$neighbPIN<-factor(rdata$neighbPIN) # changing to factor
rdata<-rdata[which(rdata$neighbPIN!='78733'),]
rdata=na.omit(rdata)
summary(rdata)
detach(df)
attach(rdata)
