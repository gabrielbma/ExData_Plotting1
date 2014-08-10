source("util.R")

makePlot3 <- function() {
    data <- loadFile()
    png(file = "plot3.png",
        width = 480,
        height = 480,
        bg = "white")
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
           lty = 1)
    dev.off()                           
}

makePlot3()
