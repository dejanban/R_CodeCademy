#example 1 - Variance
# load libraries
library(dplyr)
library(tidyr)

load("lesson_data.Rda")
variance <- function(x) mean((x-mean(x))^2)

hist(nba_data, col=rgb(0,0,1,1/4),xlim=c(50,100), main="NBA and OkCupid",breaks=80)
hist(okcupid_data,  col=rgb(1,0,0,1/4), add=T, breaks=80)
legend("topright", c("NBA Data", "OkCupid Data"), fill=c("blue", "red"))
box()

print(paste("The mean of the NBA dataset is ", mean(nba_data)))
print(paste("The mean of the OkCupid dataset is ",mean(okcupid_data)))

print(paste("The variance of the NBA dataset is ", variance(nba_data)))
print(paste("The variance of the OkCupid dataset is ", variance(okcupid_data)))

#example 2 - STD
# load libraries
library(dplyr)
library(tidyr)

# Importing data and calculating variance
load("lesson_data.Rda")
variance <- function(x) mean((x-mean(x))^2)

nba_variance <- variance(nba_data)
okcupid_variance <- variance(okcupid_data)
# Change these variables to be the standard deviation of each dataset.
nba_standard_deviation <- nba_variance ^ 0.5
okcupid_standard_deviation <- okcupid_variance ^ 0.5

#IGNORE CODE BELOW HERE
print(paste("The standard deviation of the NBA dataset is ",nba_standard_deviation))
print(paste("The standard deviation of the OkCupid dataset is ", okcupid_standard_deviation))

#example 3
# Import data
load("lesson_data.Rda")

# Change these variables to be the standard deviation of each dataset.
nba_standard_deviation <- sd(nba_data)
okcupid_standard_deviation <- sd(okcupid_data)

#IGNORE CODE BELOW HERE
print(paste("The standard deviation of the NBA dataset is ",nba_standard_deviation))
print(paste("The standard deviation of the OkCupid dataset is ", okcupid_standard_deviation))





