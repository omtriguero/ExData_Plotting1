source("load_data.R")
df <- load_household_data()
Sys.setlocale("LC_TIME", "C")

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

# (1) Global Active Power
plot(df$Datetime, df$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")

# (2) Voltage
plot(df$Datetime, df$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# (3) Sub metering
plot(df$Datetime, df$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(df$Datetime, df$Sub_metering_2, col = "red")
lines(df$Datetime, df$Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),
       lty = 1,
       bty = "n")

# (4) Global Reactive Power
plot(df$Datetime, df$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()

file.exists("plot4.png")


list.files(pattern = "^plot[1-4]\\.(R|png)$")

file.info(c("plot1.png","plot2.png","plot3.png","plot4.png"))[, c("size","mtime")]
tools::file_ext("plot1.png")  "
