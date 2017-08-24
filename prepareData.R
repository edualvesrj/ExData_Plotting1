#created: 2017-08-24
#by: edualvesrj@gmail.com
#note: this script works with de data file "household_power_consumption.txt" 
#      at the root.
datafilename <- "household_power_consumption.txt"
mainData <- read.table(datafilename, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)),  na="?")
mainData$Time <- strptime(paste(mainData$Date, mainData$Time), "%d/%m/%Y %H:%M:%S")
mainData$Date <- as.Date(mainData$Date, "%d/%m/%Y")
subsetData <- subset(mainData, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
