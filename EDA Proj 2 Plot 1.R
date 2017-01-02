##Load data
NEI <- readRDS("summarySCC_PM25.rds") 
SCC <- readRDS("Source_Classification_Code.rds")

## We want to look at total PM2.5 levels for the given years.
## To find the number of unique years within NEI, use unique(NEI$year).
## We see there are four sets of years 1999, 2002, 2005 and 2008. 

## To see whether total emissions has changed over the years, construct a barplot.

barplot(table(NEI$year), col = "Wheat", main = "Total PM2.5 Emitted by All Sources per Year")
