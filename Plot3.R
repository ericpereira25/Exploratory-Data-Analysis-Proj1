
############################################################################################################
#'Project 1 - Exploratory Data Analysis - Week 1
#'
#'Plot3: Energy Sub Metering vs. Duration
#'
#'Author: Eric Pereira 
#'
#'Dated:13-06-2016
#############################################################################################################

myDF1<-read.table(file=file.choose(),sep=";",stringsAsFactors = FALSE,na.strings = "?",blank.lines.skip = TRUE,skip = 66638,nrow=2879,col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),dec=".")
datetime <- strptime(paste(myDF1$Date, myDF1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("Plot3.png",height=480,width=480)
plot(datetime,myDF1$Sub_metering_1,type="n",xlab="",ylab="Energy Sub Metering")
points(datetime,myDF1$Sub_metering_1,type = "l")
points(datetime,myDF1$Sub_metering_2,type = "l",col="red")
points(datetime,myDF1$Sub_metering_3,type = "l",col="blue")
legend("topright", pch=c(NA,NA),col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),lwd=1)
dev.off()