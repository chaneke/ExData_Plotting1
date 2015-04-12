## Omar, Velazquez <chaneme.vj@gmail.com>
## keep DRY your code
## In  order to keep clean the plot scripts, i am using this script with the common code used between the plotting Scripts
## Best practice: Dont Repeat Yourself DRY
library(dplyr)
setwd(getwd())
if(!file.exists("power_consumption.zip")){
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","power_consumption.zip","curl")     
}
if(!file.exists("household_power_consumption.txt")){
    unzip("power_consumption.zip")
}
if(!exists("dataFrame")){
    dataFrame<-read.table("household_power_consumption.txt",head=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
}
## prepare dates
dataFrame$DateTime <- paste(dataFrame$Date, dataFrame$Time) 
dataFrame$DateTime <- as.Date(dataFrame$DateTime, format = "%d/%m/%Y %H:%M:%S")
## Subsetting filtering by dates
if(!exists("dataFrameSubset")){
    dataFrameSubset<-filter(dataFrame, DateTime >= as.Date("2007-02-01"), DateTime < as.Date("2007-02-02"))
}