# this reads and formats data and makes plot2.png

# read data
data <- read.csv("household.csv")

#format date and time 
myDates <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

# make png plot
dev.copy(png, filename="plot2.png", height=480, width=480, bg="white")
par(mar = c(6, 6, 3, 1))
plot(myDates, data$Global_active_power, type = "l", xlab =" ", ylab = "Global Active Power (kilowatts)")
dev.off()