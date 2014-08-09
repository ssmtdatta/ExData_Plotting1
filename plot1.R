# this reads and formats data and makes plot1.png

# read data
data <- read.csv("household.csv")

# make histogram and fetch histogram parameters
histinfo <- hist(data$Global_active_power)
y_mx = max(histinfo$counts) 

# make png plot
dev.copy(png, filename="plot1.png", height=480, width=480, bg="white")
par(mar = c(6, 6, 3, 1))
hist(data$Global_active_power, breaks=12, col="red", xlab = "Global Active Power (kilowatts)", ylab = "Frequncy", main="Global Active Power", axes=FALSE)
axis(side=2, las=0, at=seq(0, y_mx, 200), lab=seq(0, y_mx, 200))
axis(side=1, las=1)
dev.off()
