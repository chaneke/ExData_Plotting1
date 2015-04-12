## Omar, Velazquez <chaneme.vj@gmail.com>
## Plot 4
## using initialize.R script, this script is used to keep clean this plotting Script, 
## please go to initialize.R script to check the common code used to download, unzip, create and subset the dataFrameSubset frame
source("initialize.R")
## Sending to PNG file
png(paste(getwd(),"/plot4.png",sep=""), width=480, height=480)
## Plotting
if(exists("dataFrameSubset")){
    # Creating plotting areas 2 files 2 rows
    par(mfrow=c(2,2)) 
    ## quadrant 1,1
    plot(dataFrameSubset$DateTime, dataFrameSubset$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="") 
    ## quadrant 1,2
    plot(dataFrameSubset$DateTime, dataFrameSubset$Voltage, type="l", xlab="datetime", ylab="Voltage")   
    # quadrant 2,1
    plot(dataFrameSubset$DateTime, dataFrameSubset$Sub_metering_1, type="l", ylab= "Energy Sub Metering", xlab="")
    lines(dataFrameSubset$DateTime, dataFrameSubset$Sub_metering_2, type="l", col="red")
    lines(dataFrameSubset$DateTime, dataFrameSubset$Sub_metering_3, type="l", col="blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n", col=c("black", "red", "blue")) 
    # quadrant 2,2
    plot(dataFrameSubset$DateTime, dataFrameSubset$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
}
dev.off()