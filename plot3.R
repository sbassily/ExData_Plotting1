source('./R/prepare.R')


plot3<-function()
{
  filteredData <- prepareData()
  
 # filteredData$Date=as.Date(power.data$Date,format="%d/%m/%Y")
  #Extract observations corresponding to Feb 1st and Feb 2nd 2007.
  #data=subset(power.data, Date==as.Date("2007-02-01")|Date==as.Date("2007-02-02"))
  #Format Time variable to POSIXlt format
  
  #Transform rest of variables from factor to numeric
  
  #Plot 3
  png("Plot3.png",bg="white")
  plot(filteredData$DateTime,filteredData$Sub_metering_1,ylab="Energy sub metering",type="l",xlab="")
  plot.xy(xy.coords(filteredData$DateTime,filteredData$Sub_metering_2),type="l",col="red")
  plot.xy(xy.coords(filteredData$DateTime,filteredData$Sub_metering_3),type="l",col="blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
  dev.off()
  
}


