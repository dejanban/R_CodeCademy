# load libraries
library(readr)
library(dplyr)
library(ggplot2)

# load data frame
greatest_books <- read_csv('top-hundred-books.csv')

#plot data
hist <- qplot(greatest_books$Ages,
              geom='histogram',
              binwidth = 3,  
              main = 'Age of Top 100 Novel Authors at Publication', 
              xlab = 'Publication Age',
              ylab = 'Count',
              fill=I("blue"), 
              col=I("red"), 
              alpha=I(.2)) +
  geom_vline(aes(xintercept=mean(greatest_books$Ages),
                 color="mean"), linetype="solid",
             size=1) +
  scale_color_manual(name = "statistics", values = c(mean = "red"))

hist


# load libraries
library(readr)
library(dplyr)

# Load data frame
greatest_books <- read_csv('top-hundred-books.csv')


# Save author ages to author_ages
author_ages <- greatest_books$Ages

# Use R to calculate the median age of the top 100 authors
median_age <- median(author_ages)

print(paste("The median age of the 100 greatest authors, according to a survey by Le Monde is: " , median_age))