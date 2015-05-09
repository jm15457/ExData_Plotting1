powerConsumption <- "household_power_consumption.txt"
data <- read.table(powerConsumption, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
feb2007 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

str(feb2007)
datetime <- strptime(paste(feb2007$Date, feb2007$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(feb2007$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
