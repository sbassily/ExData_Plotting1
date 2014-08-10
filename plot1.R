source('./R/prepare.R')

#Method Plot1
plot1<-function()
{
  filteredData <- prepareData()
  
  #Save it to PNG
  png('plot1.png')
  
  
  #Init the diagram
  hist(filteredData$Global_active_power, col="red", main = "Global Active Power",  
       xlab = "Global Active Power (Kilowatt)")
  
 
  
  #Close the device
  dev.off()
  
}




plot1()
