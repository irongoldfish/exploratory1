readData()
png(file="plot3.png")
attach(dat)

plot(Time,Sub_metering_1,
	type='n',
	ylab="Energy sub metering"
)
lines(Time,Sub_metering_1,col="black")
lines(Time,Sub_metering_2,col="red")
lines(Time,Sub_metering_3,col="blue")
legend("topright",
	c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
	lwd=c(2.5,2.5,2.5),
	col=c("black","red","blue"),
)
detach(dat)
dev.off()