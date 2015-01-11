data <- read.table("household_power_consumption.txt",sep=";",header=T)
subdata <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
apower <- as.double(as.character(subdata$Global_active_power))
date <- as.character(subdata$Date)
time <- as.character(subdata$Time)
datatime <- strptime(paste(date,time), "%d/%m/%Y %H:%M:%S")
png(file="plot2.png",width=480,height=480,units="px")
plot(datatime, apower,type = "s",xlab = "",ylab = "Global Active Power(kilowatts)")
dev.off()