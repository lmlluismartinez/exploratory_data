## LKL plot2.R 20160124

household_power_consumption <- 
  read.csv("~/Luis/r_documetacion/wd/household_power_consumption.txt", sep=";")

subset_hpd <-  household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]

rm(household_power_consumption)

datetime <- strptime(paste(subset_hpd$Date, subset_hpd$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset_hpd$Global_active_power)

setwd("C:/Users/luis/Documents/Luis/r_documetacion/wd/data_analysis")

png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()