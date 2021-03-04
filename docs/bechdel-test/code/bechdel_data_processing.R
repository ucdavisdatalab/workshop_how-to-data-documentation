# Calculates summary statistics and conducts basic regression analysis to determine 
# whether movies which pass the Bechdel test do better or worse at the box office, 
# using data from www.bechdeltest.com and www.the-numbers.com

# By Andrew Flowers <andrew.flowers@fivethirtyeight.com>
# See also http://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/

# Install and load required packages
# install.packages(c("gdata", "cwhmisc")) 
library(gdata)
library(cwhmisc)

#set working directory
setwd("~/Desktop/bechdel-test/")

# Load data
rawData<-read.csv("data/bechdel-test_raw.csv", na.strings="#N/A")

# Select movies pre-1990, and format $-denominated data fields
rawData<-rawData[rawData$year>1989,]

# International-only gross profits (which equal total profits minus domestic profits)
rawData$intOnly<-rawData$intgross_2013.-rawData$domgross_2013.

# Return on Investment (ROI) measures
rawData$ROI<-rawData$intgross_2013./rawData$budget_2013. #  Total ROI
rawData$ROI1<-rawData$domgross_2013./rawData$budget_2013. #  Domestic ROI
rawData$ROI2<-rawData$intOnly/rawData$budget_2013.  #  International ROI

#save processed data to csv 

write.csv(file = "data/2021-02-28_bechdel-test_processed.csv", rawData)
