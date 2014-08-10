source('./R/prepare.R')
plot2<-function()
{
  filteredData <- prepareData()
  
  #Save it to PNG
  png("plot2.png")
  
  #Init the diagram
  plot(filteredData$DateTime, filteredData$Global_active_power, type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "")

  #Close Device
  dev.off()  
}



