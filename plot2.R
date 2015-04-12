## Omar, Velazquez <chaneme.vj@gmail.com>
## Plot 2
## using initialize.R script, this script is used to keep clean this plotting Script, 
## please go to initialize.R script to check the common code used to download, unzip, create and subset the data frame
source("initialize.R")
## Sending to PNG file
png(paste(getwd(),"/plot2.png",sep=""))
## Plotting
if(exists("dataFrameSubset")){
    barplot(dataFrameSubset$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
}
dev.off()

