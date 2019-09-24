# Getting Rid of Outliers

ggplot(data = mydata) +
  geom_point(aes(x = latitude, y = longitude, color = neighbourhood), size = 2)

# From the above latitude and longitude graph, we see an outlier.
# To correct this, we will take out the zip code 78733. 
# After taking out ZIP 78733, the graph looks like this:

mydata1<-mydata[which(mydata$neighbourhood!='78733'),]
ggplot(data = mydata1) +
  geom_point(aes(x = latitude, y = longitude, color = neighbourhood), size = 2)
