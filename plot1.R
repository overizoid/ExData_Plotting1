#Before creating the plots, I read the provided data and attached it to the variable "data".
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

#Fixed dates
data <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

#Creating the histogram
hist(as.numeric(as.character(data$Global_active_power)), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

#Export png
dev.copy(png, "plot1.png")
dev.off()
