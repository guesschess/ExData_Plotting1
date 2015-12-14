# load data and abstract some of them 
# reading raw data from a file
mydata <- read.table("../household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
sub_data <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
write.csv(sub_data, file = "data.csv", row.names = FALSE)
  
