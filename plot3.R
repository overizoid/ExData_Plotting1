#Created plot
plot(data$Date_Time, data$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")
lines(data$Date_Time, data$Sub_metering_2, type = "l", col = "red")
lines(data$Date_Time, data$Sub_metering_3, type = "l", col = "blue")

#Added required legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 2)

#Export png
dev.copy(png, "plot3.png")
dev.off()
