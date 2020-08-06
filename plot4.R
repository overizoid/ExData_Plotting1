#Split the image screen
par(mfrow = c(2,2))

#First plot
plot(data$Date_Time, data$Global_active_power, xlab = " ", ylab = "Gloabl Active Power", type = "l")

#Second plot
plot(data$Date_Time, data$Voltage, xlab = "Date/Time", ylab = "Voltage", type = "l")

#Third plot
plot(data$Date_Time, data$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")
lines(data$Date_Time, data$Sub_metering_2, type = "l", col = "red")
lines(data$Date_Time, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 2)

#Fourth plot
plot(data$Date_Time, data$Global_reactive_power, xlab = "Date/Time", ylab = "Global Reactive Power", type = "l")

#Export png
dev.copy(png, "plot4.png") 
dev.off()
