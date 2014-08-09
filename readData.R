#Assumes working directory contains "household_power_consumption.txt"
#Reads target data: start of 1/2/2007 to end of 2/2/2007, (lines 66638 to 69517)
#Formats Date+Time as an R date (strptime) and overwrites 'Time' with the result.

readData<-function(){
if(!exists("dat")){
dat<-read.table("household_power_consumption.txt",header=FALSE,sep=";",na.strings="?",skip=66637,nrows=2880, colClasses=c("character","character",rep("numeric",7)),col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dat$Time<-strptime(paste(dat$Date,dat$Time),"%d/%m/%Y %H:%M:%S")
}
}