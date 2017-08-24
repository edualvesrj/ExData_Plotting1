#created: 2017-08-24
#by: edualvesrj@gmail.com
#note: plot4
source("prepareData.R")

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(subsetData$Time, subsetData$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(subsetData$Time, subsetData$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(subsetData$Time, subsetData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(subsetData$Time, subsetData$Sub_metering_2, col="red")
lines(subsetData$Time, subsetData$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, box.lwd=0)
plot(subsetData$Time, subsetData$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(subsetData$Time, subsetData$Global_reactive_power)

dev.off()