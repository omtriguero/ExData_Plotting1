source("load_data.R")
df <- load_household_data()
Sys.setlocale("LC_TIME", "C")  # opcional para días en inglés

png("plot2.png", width = 480, height = 480)
plot(df$Datetime, df$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
file.exists("plot2.png")