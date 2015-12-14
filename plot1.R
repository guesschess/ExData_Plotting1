# reading file into R
mydata <- read.table("hps.txt", header = TRUE, sep = ";", na.strings = "?"
                                       )
strptime(mydata$Date, "%d/ %m/ %y")
# using data from date "2007/02/01 " to "2007/02/02"
sub_data <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
hist(sub_data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power(kilowatts)")
dev.copy(png, file = "plot1.png", width = 480, hheight = 480)
dev.off()