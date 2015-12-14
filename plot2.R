# reading file into R
mydata <- read.table("hps.txt", header = TRUE, sep = ";", na.strings = "?"
)
# using data from date "2007/02/01 " to "2007/02/02"
sub_data <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S") 

plot(datetime, sub_data$Global_active_power, type = "l", main = "", 
     ylab = "Global Active Power(kilowatts)") 
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()