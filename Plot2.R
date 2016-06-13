
############################################################################################################
#'Project 1 - Exploratory Data Analysis - Week 1
#'
#'Plot2: Global Active Power vs. Duration
#'
#'Author: Eric Pereira 
#'
#'Dated:13-06-2016
#############################################################################################################

myDF1<-read.table(file=file.choose(),sep=";",stringsAsFactors = FALSE,na.strings = "?",blank.lines.skip = TRUE,skip = 66638,nrow=2879,col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),dec=".")
datetime <- strptime(paste(myDF1$Date, myDF1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("Plot2.png",height=480,width=480)
plot(datetime,myDF1$Global_active_power,type = "l", xlab="", ylab = "Global Active Power(Kilowatts)")
dev.off()