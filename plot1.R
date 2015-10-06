

x <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE)

d <- x[( x$Date=='1/2/2007' | x$Date=='2/2/2007')  ,]


png(filename='plots/plot1.png', width = 480, height = 480)

hist(as.numeric(as.character(d$Global_active_power)), xlab="Global Active Power (Kilowats)", col="Red", main = "plot1")


dev.off()