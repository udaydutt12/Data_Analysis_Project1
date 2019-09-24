# Box Plots

boxplot(price ~ room_type, data = mydata)
boxplot(price ~ neighbourhood, data = mydata)

ggplot(mydata, aes(x = neighbourhood, y = price, fill = room_type)) +
  geom_boxplot(outlier.size = 1.5)
ggplot(data = mydata) +
  geom_point(aes(x = neighbourhood, y = price, color = room_type), size = 2) 