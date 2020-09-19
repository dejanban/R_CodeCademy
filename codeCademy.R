# Simple math
num1 <- 573-74+1
num2 <- 25*2
num3 <- 12/5

# Checking the data type
class(2) # numeric
class('hello') # character
class('23') #character
class (FALSE) #logical
class(NA) #logical

#print
print("Dejan")
age <- 20
print(age)

#vector
phone <- c(0L,0L,0L)
typeof(phone)

#if statement
message <- "I change based on a condition."

if (TRUE) {
  message <- "I execute this when true!"
  print(message)
} else {
  message <- "I execute this when false!"
  print(message)
}

#Coparison Operators
isGreater <- 56>=129
print(isGreater)
isGreater <- 56!=129
print(isGreater)

#Logical Operators
message <- 'Should I pack an umbrella?'
weather <- 'cloudy'
high_chance_of_rain <- TRUE

if (weather == 'cloudy' & high_chance_of_rain == TRUE){
  message <- "Pack umbrella!"
}else{
  message <- "No need for umbrella!"
}
print(message)

#Calling a Function
data <- c(120,22,22,31,15,120)
unique_vals <- unique(data)
print(unique_vals)

solution <- sqrt(49)
print(solution)

round_down <- floor(3.14)
round_up <- ceiling(3.14)

print(round_down)
print(round_up)

#Importing Packages
install.packages('dplyr')
library(dplyr)
install.packages('readr')
library(readr)

#grammar of data manipulation," dplyr 
library(readr)
library(dplyr)

#read data csv
hidranti <- read_csv("Hidranti_Obcina_Crnomelj.csv")
hidranti

headhidranti <- head(hidranti)
headhidranti


summaryhidranti <- summary(hidranti)
summaryhidranti

#Piping
#pipe operator, or %>%
hidranti %>%
  head() #the same as head(hidranti)

#Selecting Columns
Koordinate <- hidranti %>%
  select(X, Y)
Koordinate

#Excluding Columns
brezKoordinat <- hidranti %>%
  select(-X,-Y)
brezKoordinat

#Filtering Rows with Logic I
nadzemni <- hidranti %>%
  filter(DIM_Z == 1.3)
nadzemni

nadzemniNovejsiOd2000 <- hidranti %>%
  filter(DIM_Z == 1.3, ATR3>=2000)
nadzemniNovejsiOd2000

#Filtering Rows with Logic II
nadzemniInNovejsiOd2000 <- hidranti %>%
  filter(DIM_Z == 1.3 & ATR3>=2000)
nadzemniInNovejsiOd2000

hidrantNiNadzemni <- hidranti %>%
  filter(!(DIM_Z  == 1.3))
hidrantNiNadzemni

#Arranging Rows
letoIzdelave <- hidranti %>%
  arrange(desc(ATR3))
letoIzdelave

#Rename columns
renamedColumn <- hidranti %>%
                 rename(latitude = X,
                        longitute = Y)
renamedColumn

# calculate average height, average weight, and change in popularity from 2013 to 2016
# add this columns and drop others
averageHidranti <- hidranti %>%
  transmute(X = X,
            Y = Y,
            Year = (ATR3 + ATR5)/2,
            Year2 = (ATR3 - ATR5))
averageHidranti

# Adding a Column
head(hidranti) #inspect dataframe
hidrantiAdedColum <- hidranti %>%
  mutate(yearNew = ATR3 + 20)
hidrantiAdedColum

#Adding Multiple Columns

hidrantiAdedColum <- hidranti %>%
  mutate(yearNew = ATR3 + 20,
         yearNew1 = ATR3 + 30,
         yearNew2 = ATR3 + 40)
hidrantiAdedColum

#Transmute Columns - dplyr's
hidrantiTransmuted <- hidranti %>%
  transmute(X = X,
            Y = Y)
hidrantiTransmuted

#Rename Columns
hidrantiRenamed <- hidranti %>%
  rename(Longitude = X,
         Latitude = Y)
hidrantiRenamed

hidrantiRenamed <- rename(hidranti, Longitude = X, Latitude = Y)
hidrantiRenamed

m0 <- matrix(NA, 4, 0)
m0
rownames(m0)

m2 <- cbind(1, 1:4)
m2
colnames(m2, do.NULL = FALSE)
colnames(m2) <- c("x","Y")
rownames(m2) <- rownames(m2, do.NULL = FALSE, prefix = "Obs.")
m2










