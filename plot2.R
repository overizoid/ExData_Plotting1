#Create Date/Time column
data$Date_Time <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

#Create plot
plot(data$Date_Time, data$Global_active_power, xlab = " ", ylab = "Gloabl Active Power (kilowatts)", type = "l")

#Export png
dev.copy(png, "plot2.png")
dev.off()
