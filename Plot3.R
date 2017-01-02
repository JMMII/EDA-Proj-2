##Load data
NEI <- readRDS("summarySCC_PM25.rds") 
SCC <- readRDS("Source_Classification_Code.rds")

## Of the four Types of Emissions, which of the four have seen decreases and which have seen
## increases over the years for Baltimore City? Use ggplot2 to create a graph to solve

## The fips code for Baltimore City is 24510. Filter NEI for this fips.
BaltCity <- filter(NEI,fips == "24510")

## Construct a line plot.

## convert "years" into factors
BaltCity <- transform(BaltCity, year = factor(year))

#convert "type" into factors
BaltCity <- transform(BaltCity, type = factor(type))

#We know from previous plots, we need to take the log10 of Emissions. So, mutate to 
## add the column log10(Emissions)
BaltCity <- mutate(BaltCity, LogEmissions = log10(Emissions))

## create boxplot
ggplot(BaltCity, aes(year, LogEmissions)) + geom_boxplot() + facet_grid(.~type) + labs( x= "Year", y = "Log10 Tons of PM2.5", title = "Balt City PM2.5 Emissions by Type per Year")
