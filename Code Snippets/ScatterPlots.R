# Scatterplot Matrices

plot(mydata , gap =0)
pairs(~price + room_type+ 
        number_of_reviews+reviews_per_month+
        calculated_host_listings_count+availability_365, data=mydata, 
      main="Simple Scatterplot Matrix")