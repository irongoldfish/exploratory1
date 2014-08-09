readData()
png(file="plot4.png")
attach(dat)

par(mfrow=c(2,2))

plot(Time,Global_active_power,
	type='l',
	ylab="Global Active Power"
)

plot(Time, Voltage,
	   type='l',
	   xlab="datetime"
)

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
	bty="n",
	inset=0
)

plot(Time,Global_reactive_power,
	type='l',
	xlab="datetime"
)


detach(dat)
dev.off()