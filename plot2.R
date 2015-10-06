

x <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE)

d <- x[( x$Date=='1/2/2007' | x$Date=='2/2/2007')  ,]



d$Date<-as.Date(d$Date , "%d/%m/%Y")

d$Time<-paste(d$Date, d$Time, sep=" ")
d$Time <- strptime(d$Time, "%Y-%m-%d %H:%M:%S")
 
png(filename='plots/plot2.png', width = 480, height = 480)

plot(d$Time, d$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()
