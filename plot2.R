# Exploratory Data Analysis - Course Project 1- Plot2
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
png(filename = "plot2.png", width = 480, height = 480, units = "px")

## Plot 2
plot(tbl$DateTime, tbl$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()



