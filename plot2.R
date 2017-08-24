#created: 2017-08-24
#by: edualvesrj@gmail.com
#note: plot2
source("prepareData.R")

png("plot2.png", width=480, height=480)
plot(subsetData$Time, subsetData$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()