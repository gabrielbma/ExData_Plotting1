source("util.R")

makePlot1 <- function() {
    data <- loadFile()
    png(file = "plot1.png",
        width = 480,
        height = 480,
        bg = "white")
    hist(data$Global_active_power,
         c="red",
         main="Global Active Power",
         xlab="Global Active Power (kilowatts)")
    dev.off()
}

makePlot1()
