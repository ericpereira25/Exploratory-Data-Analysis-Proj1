
############################################################################################################
#'Project 1 - Exploratory Data Analysis - Week 1
#'
#'Plot1: Global Active Power vs. Frecuency
#'
#'Author: Eric Pereira 
#'
#'Dated:13-06-2016
#############################################################################################################

myDF1<-read.table(file=file.choose(),sep=";",stringsAsFactors = FALSE,na.strings = "?",blank.lines.skip = TRUE,skip = 66638,nrow=2879,col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))


png("Plot1.png",height=480,width=480)
hist(myDF$Global_active_power,col="red",xlab="Global Active Power(Kilowatts)", main="Global Active Power" )
dev.off()