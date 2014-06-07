# Answer to "Exploratory Data Analysis, Coarse Project 1, Plot 1
# CleanData contains the data for the two days of interest. Refer to
#       Cookbook.R for the generation script

png(filename = "plot1.png",
    width = 480,
    height = 480, 
    units = "px")
hist(CleanData$Global_active_power,
     col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()