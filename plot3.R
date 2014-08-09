# this reads and formats data and makes plot3.png

# read data
data <- read.csv("household.csv")

#format date and time
myDates <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

# make png file
dev.copy(png, filename="plot3.png", height=480, width=480, bg="white")
par(mar = c(6, 6, 3, 1))
plot(myDates, data$Sub_metering_1, type = 'l', col='black', xlab =" ", ylab = "Energy sub metering")
lines(myDates, data$Sub_metering_2, type = 'l', col='red')
lines(myDates, data$Sub_metering_3, type = 'l', col='blue')
legend("topright", c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "), cex = 0.85, lty = c(1, 1, 1), col = c("black", "red","blue"))
dev.off()