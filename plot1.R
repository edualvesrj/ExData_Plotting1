#created: 2017-08-24
#by: edualvesrj@gmail.com
#note: plot1
source("prepareData.R")

png("plot1.png", width=480, height=480)
hist(subsetData$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")
dev.off()
