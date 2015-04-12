## Omar, Velazquez <chaneme.vj@gmail.com>
## Plot 2
## using initialize.R script, this script is used to keep clean this plotting Script, 
## please go to initialize.R script to check the common code used to download, unzip, create and subset the data frame
source("initialize.R")
## Sending to PNG file
png(paste(getwd(),"/plot2.png",sep=""),width=480, height= 480)
## Plotting
if(exists("dataFrameSubset")){
    plot(dataFrameSubset$DateTime, dataFrameSubset$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="")
}
dev.off()

