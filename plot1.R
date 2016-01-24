## LKL plot1.R 20160124

household_power_consumption <- 
  read.csv("~/Luis/r_documetacion/wd/household_power_consumption.txt", sep=";")

globalActivePower <- as.numeric(household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]$Global_active_power)

setwd("C:/Users/luis/Documents/Luis/r_documetacion/wd/data_analysis")

png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

