#Before creating the plots, I read the provided data and attached it to the variable "data".

#Creating the histogram
hist(as.numeric(as.character(data$Global_active_power)), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

#Export png
dev.copy(png, "plot1.png")
dev.off()
