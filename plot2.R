# Answer to "Exploratory Data Analysis, Coarse Project 1, Plot 2
# CleanData contains the data for the two days of interest. Refer to
#       Cookbook.R for the generation script
# Remark - the column "Time" holds the date and time combined for the respective
#       datapoint

# Set Locale to English to force English day-names
Sys.setlocale(category="LC_ALL",locale="English_United States.1252")

png(filename = "plot2.png",
    width = 480,
    height = 480, 
    units = "px")
plot(CleanData$Time,
     CleanData$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()

# Restore my Locale
Sys.setlocale(category="LC_ALL",locale="Dutch_Netherlands.1252")