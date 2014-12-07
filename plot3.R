# Exploratory Data Analysis - Course Project 1- Plot3
# Vishal Sharma Dec 7, 2014

##Set the working directory
setwd("E:/BackUp/BigData/DataScience/Exploratory-Data-Analysis/ExData_Plotting1/Course_Project_1")

##Define the Data file
dataFile <- "household_power_consumption.txt"

## Getting full dataset
tbl <- read.table(dataFile, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

## Filter the data for the mentioned Period
tbl <- tbl[(tbl$Date == "1/2/2007") | (tbl$Date == "2/2/2007"),]
tbl$DateTime <- strptime(paste(tbl$Date, tbl$Time), "%d/%m/%Y %H:%M:%S")

## Define the outout file
png(filename = "plot3.png", width = 480, height = 480, units = "px")

cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(tbl$DateTime, tbl$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(tbl$DateTime, tbl$Sub_metering_2, type="l", col="red")
lines(tbl$DateTime, tbl$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
dev.off()