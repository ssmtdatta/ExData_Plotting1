# this reads and formats data and makes plot4.png
data <- read.csv("household.csv")

#format dates and time
myDates <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

#make four-panel png plot file
dev.copy(png, filename="plot4.png", height=480, width=480, bg="white")
par(mfcol=c(2, 2))
par(mar = c(6, 6, 3, 2))
#panel: top left
plot(myDates, data$Global_active_power, type = "l", xlab =" ", ylab = "Global Active Power")
#panel: bottom left
plot(myDates, data$Sub_metering_1, type = 'l', col='black', xlab =" ", ylab = "Energy sub metering")
lines(myDates, data$Sub_metering_2, type = 'l', col='red')
lines(myDates, data$Sub_metering_3, type = 'l', col='blue')
legend("topright", c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "), cex = 0.65, bty="n",lty = c(1, 1, 1), col = c("black", "red","blue"))
#panel: top right
plot(myDates, data$Voltage, type="l", xlab ="datetime", ylab = "Voltage")
#panel: bottom right
plot(myDates, data$Global_reactive_power, type="l", xlab ="datetime", ylab="Global_reactive_power", ylim=c(0.0, 0.5), cex.axis=0.75)
dev.off()