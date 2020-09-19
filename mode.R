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
  geom_vline(aes(xintercept=median(greatest_books$Ages),
                 color="median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(greatest_books$Ages),
                 color="mean"), linetype="solid",
             size=1) +
  scale_color_manual(name = "statistics", values = c(median = "blue", mean = "red"))

hist


library(DescTools)


library(readr)
library(dplyr)
library(DescTools)

# Read author data
greatest_books = read_csv("top-hundred-books.csv")

# Set author ages to 
author_ages <- greatest_books$Ages

mode_age <- Mode(author_ages)

print(paste("The mode age of authors from Le Monde's 100 greatest books is: ", mode_age[1]))