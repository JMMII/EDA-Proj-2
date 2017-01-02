##Load data
NEI <- readRDS("summarySCC_PM25.rds") 
SCC <- readRDS("Source_Classification_Code.rds")

## We want to look at total PM2.5 levels for the given years.
## To find the number of unique years within NEI, use unique(NEI$year).
## We see there are four sets of years 1999, 2002, 2005 and 2008. 

## To see whether total emissions have changed over the years, construct a boxplot.

## convert "years" into factors.
NEI2 <- transform(NEI, year = factor(year))

## create boxplot
boxplot(log10(Emissions) ~ year, NEI2, main= "Total PM2.5 Emissions - All Locations", xlab = "Year", ylab = "Log10 Tons of PM2.5", ylim = c(-6.5,2.3))

