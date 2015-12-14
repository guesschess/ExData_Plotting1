# reading file into R
sub_data <- read.csv("data.csv", header = TRUE, na.strings = "?")
datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S") 

plot(datetime, sub_data$Global_active_power, type = "l", main = "", 
     ylab = "Global Active Power(kilowatts)") 
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()