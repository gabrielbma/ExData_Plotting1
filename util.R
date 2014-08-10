loadFile <- function() {
    startLineNumber <- 66637
    endLineNumber <- 69516
    totalLines <- endLineNumber - startLineNumber
    data <- read.table("household_power_consumption.txt",
                       stringsAsFactors = FALSE,
                       skip = startLineNumber,
                       comment.char = "",
                       sep = ";",
                       nrows = totalLines,
                       na.strings = "?",
                       col.names = c("Date",
                           "Time",
                           "Global_active_power",
                           "Global_reactive_power",
                           "Voltage",
                           "Global_intensity",
                           "Sub_metering_1",
                           "Sub_metering_2",
                           "Sub_metering_3"))
    date_time <- paste(data$Date, data$Time)
    data$Date_time <- strptime(date_time,
                               format="%d/%m/%Y %H:%M:%S")
    data
}

