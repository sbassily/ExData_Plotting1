source('./R/prepare.R')
plot2<-function()
{
  filteredData <- prepareData()
  
  #I open the png device
  png("plot2.png")
  #Here is the plot with the proper feature
  plot(filteredData$DateTime, filteredData$Global_active_power, type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "")
  #axis(1, at = c(1,1440.5,2880), labels = c("Thu", "Fri", "Sat"))
  dev.off()  
}



