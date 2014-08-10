source("util.R")

makePlots <- function(){
    data <- loadFile()

    png(file = "plot4.png",
        width = 480,
        height = 480,
        bg = "white")

    par(mfrow = c(2,2))
    
    makePlot1( data );
    makePlot2( data );
    makePlot3( data );
    makePlot4( data );

    dev.off()
}

makePlot1 <- function( data ){
    plot(data$Date_time,
         data$Global_active_power,
         type = "l",
         xlab = "",
         ylab ="Global Active Power")
}

makePlot2 <- function( data ) {
    plot(data$Date_time,
         data$Voltage,
         type = "l",
         xlab = "datetime",
         ylab ="Voltage")
}

makePlot3 <- function( data ) {
    plot(data$Date_time,
         data$Sub_metering_1,
         type = "l",
         xlab = "",
         ylab = "Energy sub metering")
    lines(data$Date_time,
          data$Sub_metering_2,
          type = "l", col = "red")
    lines(data$Date_time,
          data$Sub_metering_3,
          type = "l", col = "blue")
    legend("topright",
           legend = c("Sub_metering_1", "Sub_metering_2",
               "Sub_metering_3"),
           col = c("black","red", "blue"),
           lty = 1, box.lty = 0)
}

makePlot4 <- function( data ) {
    plot(data$Date_time,
         data$Global_reactive_power,
         type = "l",
         xlab = "datetime",
         ylab = "Global_reactive_power")
}

makePlots()
