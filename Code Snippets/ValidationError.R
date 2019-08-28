#### __Validation Error__

([See Insight](https://data.world/yeeunchoi/f-17-eda-project-3/insights/7089de22-69bb-4c4d-a61a-4716d87ae15e))

sqrt(val.errors)

[1] 239.7986 232.5765 229.5339 229.5322 228.0122 228.0008 226.9091 226.1781
[9] 226.4533

> plot(sqrt(val.errors),ylab="Root MSE",ylim=c(200,300),pch=19,type="b")
> points(sqrt(regfit.fwd$rss[-1]/3080),col="blue",pch=19,type="b")
> legend("topright",legend=c("Training","Validation"),col=c("blue","black"),pch=19)

![](validationerror.png)
