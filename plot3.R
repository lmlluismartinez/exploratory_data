## LKL plot3.R 20160124

household_power_consumption <- 
  read.csv("~/Luis/r_documetacion/wd/household_power_consumption.txt", sep=";")

subset_hpd <-  household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]

rm(household_power_consumption)

datetime <- strptime(paste(subset_hpd$Date, subset_hpd$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset_hpd$Global_active_power)
sub_Metering1 <- as.numeric(subset_hpd$Sub_metering_1)
sub_Metering2 <- as.numeric(subset_hpd$Sub_metering_2)
sub_Metering3 <- as.numeric(subset_hpd$Sub_metering_3)


setwd("C:/Users/luis/Documents/Luis/r_documetacion/wd/data_analysis")

png("plot3.png", width=480, height=480)

plot(datetime, sub_Metering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub_Metering2, type="l", col="red")
lines(datetime, sub_Metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()