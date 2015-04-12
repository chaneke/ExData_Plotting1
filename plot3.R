## Omar, Velazquez <chaneme.vj@gmail.com>
## Plot 3
## using initialize.R script, this script is used to keep clean this plotting Script, 
## please go to initialize.R script to check the common code used to download, unzip, create and subset the data frame
source("initialize.R")
## Sending to PNG file
png(paste(getwd(),"/plot3.png",sep=""),width=480, height=480)
## Plotting
if(exists("dataFrameSubset")){
    plot(dataFrameSubset$DateTime, dataFrameSubset$Sub_metering_1, type="l", ylab= "Energy sub metering", xlab="")
    lines(dataFrameSubset$DateTime, dataFrameSubset$Sub_metering_2, type="l", col="red")
    lines(dataFrameSubset$DateTime, dataFrameSubset$Sub_metering_3, type="l", col="blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
}
dev.off()