# This script first reads the entire data file household_power_consumption.txt from the 
# appropriate directory (the current work directory). It then extracts data for the desired
# dates - Feb 1, 2007 and Feb 2, 2007.

# read data
data = read.csv("household_power_consumption.txt", sep = ";")

# extract data from the desired dates 
feb1 <- subset(data, as.character(data$Date) == "1/2/2007")
feb2 <- subset(data, as.character(data$Date) == "2/2/2007")

# combine data from desired dates.
dataPlot <- rbind(feb1, feb2)

# save the desired data for plotting
write.csv(dataPlot, file="household.csv")

#remove variables and data stores to save a little space.
remove(data, feb1, feb2, dataPlot)
