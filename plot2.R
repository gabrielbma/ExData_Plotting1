source("util.R")

makePlot2 <- function() {
    data <- loadFile()
    png(file = "plot2.png",
        width = 480,
        height = 480,
        bg = "white")
    plot( data$Date_time,
         data$Global_active_power,
         type = "l",
         xlab = "",
         ylab ="Global Active Power (kilowatts)")
    dev.off()
}

makePlot2()
