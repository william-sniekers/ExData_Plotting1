# Answer to "Exploratory Data Analysis, Coarse Project 1, Plot 3
# CleanData contains the data for the two days of interest. Refer to
#       Cookbook.R for the generation script
# Remark - the column "Time" holds the date and time combined for the respective
#       datapoint

# Set Locale to English to force English day-names
Sys.setlocale(category="LC_ALL",locale="English_United States.1252")

png(filename = "plot3.png",
    width = 480,
    height = 480, 
    units = "px")
with(CleanData, plot(Time,
                     Sub_metering_1,
                     type="l",
                     col="black",
                     xlab="",
                     ylab="Energy sub metering"))
with(CleanData, points(Time,
                       Sub_metering_2,
                       type="l",
                       col="red"))
with(CleanData, points(Time,
                       Sub_metering_3,
                       type="l",
                       col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

# Restore my Locale
Sys.setlocale(category="LC_ALL",locale="Dutch_Netherlands.1252")