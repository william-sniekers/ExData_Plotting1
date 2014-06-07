# CookBook Describing data preparation tasks
# For info on data / meaning / source etc. see course site on
# https://class.coursera.org/exdata-003/human_grading/view/courses/972140/assessments/3/submissions

# Get the input data to process
InputData <- read.csv("household_power_consumption.txt", sep=";")
# First filter out the dates of interest. This speeds up following actions
CleanData <- subset(InputData,(Date == "1/2/2007") | (Date == "2/2/2007"))
# Transform the columns to the right datatypes
CleanData <- transform(CleanData,Date = 
                               as.Date(Date, format="%d/%m/%Y"))
CleanData <- transform(CleanData,Time =
                               as.POSIXct(paste(as.character(CleanData$Date),
                                                as.character(CleanData$Time)),
                                          format="%Y-%m-%d %H:%M:%S",
                                          tz="UTC"))
CleanData <- transform(CleanData,Global_active_power =
                               as.numeric(as.character(Global_active_power)))
CleanData <- transform(CleanData,Global_reactive_power =
                               as.numeric(as.character(Global_reactive_power)))
CleanData <- transform(CleanData,Voltage =
                               as.numeric(as.character(Voltage)))
CleanData <- transform(CleanData,Global_intensity =
                               as.numeric(as.character(Global_intensity)))
CleanData <- transform(CleanData,Sub_metering_1 =
                               as.numeric(as.character(Sub_metering_1)))
CleanData <- transform(CleanData,Sub_metering_2
                       = as.numeric(as.character(Sub_metering_2)))
# Sub_metering_3 already numeric after import.

