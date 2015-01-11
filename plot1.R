data <- read.table("household_power_consumption.txt",sep=";",header=T)
subdata <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
apower <- as.double(as.character(subdata$Global_active_power))
png(file="plot1.png",width=480,height=480,units="px")
hist(apower,main="Global Active Power",col="red",xlab = "Global Active Power(kilowatts)")
dev.off()