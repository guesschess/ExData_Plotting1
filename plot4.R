# reading data from a file
sub_data <- read.csv("data.csv", header = TRUE, na.strings = "?")
datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S") 
# pay attention to the format of the date and time: the year is un-abbreviated, so the the the 
# symbol of the year must be the captital character

# devide the page into 2 * 2
par(mfrow=c(2,2))

hist(sub_data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power(kilowatts)")
plot(datetime, sub_data$Global_active_power, type = "l", main = "", 
     ylab = "Global Active Power(kilowatts)")
plot(datetime, sub_data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(datetime, sub_data$Sub_metering_2, type = "l", col = "red")
lines(datetime, sub_data$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1,
       lwd = 2.5, col = c("black","red","blue"))
plot(datetime, sub_data$Global_reactive_power, type = "l", ylab = "Global_reactive_power")

dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()