readData()
png(file="plot2.png")
with(dat,
plot(Time,Global_active_power,
	type='l',
	ylab="Global Active Power (kilowatts)"
)
)
dev.off()