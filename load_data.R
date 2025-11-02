setwd("C:/Users/elang/OneDrive/Escritorio/Data Science Cetefication/Exploratory Data Analysis/data_household_power_consumption")
 # load_data.R
   load_household_data <- function(path = "data_household_power_consumption.txt") {
    +     # 1) Leer todo el archivo (separador ';', missing '?')
      +     df <- read.table(path,
                             +                      header = TRUE,
                             +                      sep = ";",
                             +                      na.strings = "?",
                             +                      stringsAsFactors = FALSE)
      +     
        + df <- df[df$Date %in% c("1/2/2007", "2/2/2007"), ]
        + 
          + # 3) Crear columna Datetime (clase POSIXct)
          + df$Datetime <- as.POSIXct(paste(df$Date, df$Time),
                                      +                           format = "%d/%m/%Y %H:%M:%S")
          + 
            + df
           }
   source("load_data.R")
   df <- load_household_data()
   dim(df)     # Deberías ver ~ 2880 filas y 10 columnas
 
   str(df)     # Datetime debe ser POSIXc