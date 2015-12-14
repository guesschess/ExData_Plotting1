# reading file into R
mydata <- read.table("hps.txt", header = TRUE, sep = ";", na.strings = "?"
)
# using data from date "2007/02/01 " to "2007/02/02"
sub_data <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S") 



# plotting

plot(datetime, sub_data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(datetime, sub_data$Sub_metering_2, type = "l", col = "red")
lines(datetime, sub_data$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1,
       lwd = 2.5, col = c("black","red","blue"))
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()