#grammar of graphics. ggplot2
#Layers and Geoms

# load libraries and data
library(readr)
library(dplyr)
library(ggplot2)
movies <- read_csv("imdb.csv")

# Observe layers being added with the + sign
viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) +
  geom_point(aes(color=nrOfGenre), alpha=0.5) + 
  labs(title="Movie Ratings Vs Award Wins", subtitle="From IMDB dataset", y="Number of Award Wins", x="Move Rating", color = "Number of Genre")


# Prints the plot
viz

#Associating the Data
  #Define variable and print it
  viz <- ggplot(data = movies)
  viz
  
#What are aesthetics?
  #Create aesthetic mappings at the canvas level
  viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins))
  viz
  
  # Add a geom point layer
  viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) + geom_point()
  
#Geom Aesthetics
  # Add manual alpha aesthetic mapping
  viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) + geom_point(aes(color=nrOfGenre)) 
  
#Manual Aesthetics
  # Add manual alpha aesthetic mapping
  viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) +
    geom_point(aes(color=nrOfGenre), alpha = 0.5) 
  
#Labels
  viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) +
    geom_point(aes(color=nrOfGenre), alpha=0.5) +
    labs(title="Movie Ratings Vs Award Wins", 
         subtitle="From IMDB dataset", 
         x="Movie Rating", 
         y="Number of Award Wins", 
         color = "Number of Genre")  
  
#Extending The Grammar
  #bar chart
  
  # Inspect the mpg builtin dataset
  head(mpg)
  #Create a bar chart
  bar <- ggplot(mpg, aes(class)) + geom_bar(aes(fill=class)) +
    labs(title="Types of Vehicles", subtitle="From fuel economy data for popular car models (1999-2008)")
  bar
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  