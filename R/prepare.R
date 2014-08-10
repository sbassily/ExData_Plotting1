prepareData<-function()
{
  #Reading file Data into table
  data = read.csv2('household_power_consumption.txt')
  
  #Filter Data
  filteredData <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')
  
  #Format Date
  filteredData$Date <- as.Date(filteredData$Date,format="%d/%m/%Y")

  #transfer data to numeric
  for (i in 3:9)
  {
    filteredData[,i]=as.numeric(as.character(filteredData[,i]))
  }
  
  #Formate datetime 
  datetime =paste(as.character(filteredData$Date),as.character(filteredData$Time),sep=" ")
 
  formattedDatetime = strptime(datetime,format="%Y-%m-%d %H:%M")
  
  filteredData$DateTime <- formattedDatetime 
  
  #Return data
  filteredData
}
