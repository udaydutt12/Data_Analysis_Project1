```{r setup, include=FALSE}
#Load the required library
library(MASS)
library(car)
library(leaps)
library(ggplot2)
library(class)
library(glmnet)
library(httpuv)
library(caTools)

#Define Data Location
srcFile <- 'clean_listings_summary.csv'

# Read data in comma-delimited file
rrdata <- read.csv(srcFile, header=T)
rrdata$neighbourhood<-factor(rrdata$neighbourhood) #changing to factor
mydata<-rrdata[c(1,6:12,14:16)] #New df with elected variables
attach(mydata)
knitr::opts_chunk$set(echo = TRUE)
```