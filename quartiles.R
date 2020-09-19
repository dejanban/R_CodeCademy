#A common way to communicate a high-level overview of a 
#dataset is to find the values that split the data into four groups of equal size

#By doing this, we can then say whether a new datapoint falls in the first, 
#second, third, or fourth quarter of the data

dataset_one <- c(50, 10, 4, -3, 4, -20, 2)
# sorted dataset_one: c(-20, -3, 2, 4, 4, 10, 50)

dataset_two <- c(24, 20, 1, 45, -15, 40)

# define the second quartile of both datasets here:
dataset_one_q2 <- 4
dataset_two_q2 <- (20+24)/2
print(dataset_two_q2)

# ignore the code below here:

tryCatch(print(paste("The second quartile of dataset one is",dataset_one_q2)), error=function(e) {print("You haven't defined dataset_one_q2")})

tryCatch(print(paste("The second quartile of dataset two is",dataset_two_q2)), error=function(e) {print("You haven't defined dataset_two_q2")})

#example 2
dataset_one <- c(50, 10, 4, -3, 4, -20, 2)
# sorted dataset_one: [-20, -3, 2, 4, 4, 10, 50]

dataset_two <- c(24, 20, 1, 45, -15, 40)

dataset_one_q2 <- 4
dataset_two_q2 <- 22

# define the first and third quartile of both datasets here:
dataset_one_q1 <- -3
dataset_one_q3 <- 10
dataset_two_q1 <- 1
dataset_two_q3 <- 40

#example 3
dataset_one <- c(50, 10, 4, -3, 4, -20, 2)
# sorted dataset_one: [-20, -3, 2, 4, 4, 10, 50]

dataset_two <- c(24, 20, 1, 45, -15, 40)

dataset_one_q2 <- 4
dataset_two_q2 <- 22

# define the first and third quartile of both datasets here:
dataset_one_q1 <- -0.5
dataset_one_q3 <- 7

dataset_two_q1 <- 1
dataset_two_q3 <- 40

#example 4
# create the variables songs_q1, songs_q2, and songs_q3 here:
songs_q1 <- quantile(songs, 0.25)
songs_q2 <- quantile(songs, 0.50)
songs_q3 <- quantile(songs, 0.75)
print(songs_q1)
print(songs_q2)
print(songs_q3)

# create the variables favorite_song and quarter here:
favorite_song <- 250
quarter <- 3

#example 4
# load libraries
library(ggplot2)

# load song data
load("songs.Rda")

# plot histogram
hist <- qplot(songs,
              geom="histogram",
              main = 'Histogram of Song Lengths',
              xlab = 'Song Length (Seconds)',
              ylab = 'Count',
              fill=I("blue"),
              col=I("red"),
              alpha=I(.2)) +
  geom_vline(aes(xintercept=quantile(songs,0.25),
                 color=I("blue")),
             linetype="solid",
             size=1,
             show.legend=T) +
  geom_vline(aes(xintercept=quantile(songs,0.5),
                 color=I("purple")),
             linetype="solid",
             size=1,
             show.legend=T) +
  geom_vline(aes(xintercept=quantile(songs,0.75),
                 color=I("yellow")),
             linetype="solid",
             size=1,
             show.legend=T) + 
  scale_colour_manual(name = "",
                      labels =c("Q1","Q2","Q3"),
                      values=c("blue","purple","yellow"))

hist














