readData()
png(file="plot1.png")
with(dat, hist(Global_active_power,
	  col="red",
	  main="Global Active Power",
	  xlab="Global Active Power (kilowatts)"
))
dev.off()