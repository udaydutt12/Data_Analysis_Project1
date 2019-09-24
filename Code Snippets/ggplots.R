# GGPlots of price vs each explanatory variable
ggplot(mydata, aes(minimum_nights, y = price, color = neighbourhood)) + 
  geom_point(size = 2)
ggplot(mydata, aes(minimum_nights, y = price, color = room_type)) + 
  geom_point(size = 2)

ggplot(mydata, aes(number_of_reviews, y = price, color = neighbourhood)) + 
  geom_point(size = 2)
ggplot(mydata, aes(number_of_reviews, y = price, color = room_type)) + 
  geom_point(size = 2)

ggplot(mydata, aes(x=reviews_per_month, y = price, color = neighbourhood)) + 
  geom_point(size = 2)
ggplot(mydata, aes(x=reviews_per_month, y = price, color = room_type)) + 
  geom_point(size = 2)

ggplot(mydata, aes(x=calculated_host_listings_count, y = price, color = neighbourhood)) + 
  geom_point(size = 2)
ggplot(mydata, aes(x=calculated_host_listings_count, y = price, color = room_type)) + 
  geom_point(size = 2)

ggplot(mydata, aes(x=availability_365, y = price, color = neighbourhood)) + 
  geom_point(size = 2)
ggplot(mydata, aes(x=availability_365, y = price, color = room_type)) + 
  geom_point(size = 2)