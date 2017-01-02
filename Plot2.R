##Load data
NEI <- readRDS("summarySCC_PM25.rds") 
SCC <- readRDS("Source_Classification_Code.rds")

## We want to look at total PM2.5 levels for the given years from Baltimore City.
## The fips code for Baltimore City is 24510. Filter NEI for this fips.

BaltCity <- filter(NEI,fips == "24510")

## To see whether total emissions in Baltimore City has changed over the years, construct a boxplot.

## convert "years" into factors
BaltCity <- transform(BaltCity, year = factor(year))

## create boxplot
boxplot(log10(Emissions) ~ year, BaltCity, main= "Total PM2.5 Emissions in Balt City", xlab = "Year", ylab = "Log10 Tons of PM2.5")
