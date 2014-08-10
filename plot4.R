source('./R/prepare.R')

plot4<- function()
{
  
  ## Getting full dataset
  filteredData <- prepareData()
  ## Plot 4
  png("Plot4.png",bg="white")
  
  par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
  with(filteredData, {
    plot(DateTime, Global_active_power, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    plot(DateTime, Voltage, type="l",
         ylab="Voltage (volt)", xlab="datetime")
    plot(DateTime, Sub_metering_1, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(DateTime, Sub_metering_2,col='Red')
    lines(DateTime, Sub_metering_3,col='Blue')
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(DateTime, Global_reactive_power, type="l",
         ylab="Global_rective_power",xlab="datetime")
  })
  ## Saving to file
  dev.off()
  
  
}