# reading file into R
sub_data <- read.csv("data.csv", header = TRUE, na.strings = "?")
                                      
# using data from date "2007/02/01 " to "2007/02/02"

strptime(sub_data$Date, "%d/ %m/ %Y")
as.numeric(sub_data$Global_active_power)
hist(sub_data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power(kilowatts)")
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()