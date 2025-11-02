source("load_data.R")
df <- load_household_data()
Sys.setlocale("LC_TIME", "C")

png("plot3.png", width = 480, height = 480)
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
dev.off()
file.exists("plot3.png")
