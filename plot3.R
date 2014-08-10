source('./R/prepare.R')


plot3<-function()
{
  filteredData <- prepareData()

  #Save Png
  png("Plot3.png",bg="white")
  
  #Init the diagram 
  plot(filteredData$DateTime,filteredData$Sub_metering_1,ylab="Energy sub metering",type="l",xlab="")
  plot.xy(xy.coords(filteredData$DateTime,filteredData$Sub_metering_2),type="l",col="red")
  plot.xy(xy.coords(filteredData$DateTime,filteredData$Sub_metering_3),type="l",col="blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
  
  #close the device
  dev.off()
  
  
}


