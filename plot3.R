x <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE)

d <- x[( x$Date=='1/2/2007' | x$Date=='2/2/2007')  ,]



d$Date<-as.Date(d$Date , "%d/%m/%Y")

d$Time<-paste(d$Date, d$Time, sep=" ")
d$Time <- strptime(d$Time, "%Y-%m-%d %H:%M:%S")

png(filename='plots/plot3.png', width = 480, height = 480)

plot(x=(d$Time),y=d$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(x=(d$Time),y=d$Sub_metering_2,col="red")
lines(x=(d$Time),y=d$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",col=c("black","red","blue"),lwd=2,cex=0.7)
dev.off()