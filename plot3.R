# reading file into R
sub_data <- read.csv("data.csv", header = TRUE, na.strings = "?")
datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S") 



# plotting

plot(datetime, sub_data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(datetime, sub_data$Sub_metering_2, type = "l", col = "red")
lines(datetime, sub_data$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1,
       lwd = 2.5, col = c("black","red","blue"))
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()