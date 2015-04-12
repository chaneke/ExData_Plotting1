## Omar, Velazquez <chaneme.vj@gmail.com>
## keep DRY your code
## In  order to keep clean the plot scripts, i am using this script with the common code used between the plotting Scripts
## Best practice: Dont Repeat Yourself DRY
library(dplyr)
library(datasets)
library(lubridate)
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
if(!exists("dataFrameSubset")){
    dataFrameSubset<-filter(dataFrame, (dataFrame$Date == "1/2/2007" | dataFrame$Date== "2/2/2007")) 
    dataFrameSubset$Date<-as.Date(dataFrameSubset$Date, format = "%d/%m/%Y")
    dataFrameSubset$DateTime<-as.POSIXct(paste(dataFrameSubset$Date, dataFrameSubset$Time))
    #dataFrameSubset$Weekday<-wday(dataFrameSubset$Date, label=TRUE)
}