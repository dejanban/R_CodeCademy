# Data cleaning ------------------
# load data frame
students_1 <- read_csv('exams_0.csv')
students_2 <- read_csv('exams_1.csv')

# inspect data frame
head(students_1)
head(students_2)

#Diagnose the Data

  #head() - display the first 6 rows of the table
  #summary() - display the summary statistics of the table
  #colnames() - display the column names of the table

#Dealing with Multiple Files
  #files <- list.files(pattern = "file_.*csv")
  'The first line uses list.files() and a regular expression, a sequence of characters describing 
  a pattern of text that should be matched, to find any file in the current directory that starts with "file_" 
  and has an extension of csv, storing the name of each file in a vector files'

  #df_list <- lapply(files,read_csv)
  'The second line uses lapply() to read each file in files into a
  data frame with read_csv(), storing the data frames in df_list'

  #df <- bind_rows(df_list)
  'The third line then concatenates all of those data frames together with dplyr's bind_rows() function'

# list files
student_files <- list.files(pattern = "exams_.*csv") #opens all files that begins with exams
# read files
df_list <- lapply(student_files,read_csv) #contains all data of all opened csv files
# concatenate data frames
students <- bind_rows(df_list)

# number of rows in students
nrow_students <- nrow(students)
nrow_students

# Reshaping your Data
  #tidyr's gather()
  #library(tidyr)

  #df %>%
    #gather('Checking','Savings',key='Account Type',value='Amount')
  

  #df: the data frame you want to gather, which can be piped into gather()
  #Checking and Savings: the columns of the old data frame that you want to turn into variables
  #key: what to call the column of the new data frame that stores the variables
  #value: what to call the column of the new data frame that stores the values

# load students data frame
load("students.Rda")

# original column names
original_col_names <- colnames(students)

# gather columns
students <- students %>%
  gather('fractions', 'probability', key = 'exam', value = 'score') 
  'new table with name fraction and probability under exam and new column score with values'

exam_counts <- students %>% count(exam)
  
# Dealing with Duplicates
  'To check for duplicates, we can use the base R function duplicated(), 
  which will return a logical vector telling us which rows are duplicate rows.'
  
  'We can use the dplyr distinct() function to remove all 
  rows of a data frame that are duplicates of another row.'

  'If we wanted to remove every row with a duplicate value in the item column, we could specify a subset:
    
    fruits %>%
    distinct(item,.keep_all=TRUE)'


# drop id column
students <- students %>%
  select(-id)
head(students)

# find and count duplicated rows
duplicates <- students %>%
  duplicated()
duplicates

# count TRUE and FLSE
duplicates <- duplicates %>% table()
duplicates

# remove duplicated rows
students <- students %>%
  distinct(.keep_all=TRUE)
students

# find and count duplicated rows in updated data frame
updated_duplicates <- students %>% duplicated()
updated_duplicates <- updated_duplicates %>% table()
updated_duplicates


#Splitting By Index
  # load students data frame
  load("students.Rda")
  head(students)
  
  #print columns of students
  print(colnames(students))


  # add gender and age columns
  students <- students %>%
    mutate(gender = str_sub(gender_age,1,1))
  
  students <- students %>%
    mutate(age = str_sub(gender_age,2))
  
  head(students)
  
  # drop gender_age column
  students <- students %>%
    select(-gender_age)
  head(students)

#Splitting By Character
  students <- students %>%
    separate(full_name,c('first_name', 'last_name'),' ', extra = 'merge')
  head(students)
  
#Looking at Data Types
  # mean of age column
  students %>% 
    summarise(mean_score = mean(score))
  
#String Parsing
  # load libraries
  library(dplyr)
  
  # load students data frame
  load("students.Rda")

  # view head of students
  head(students)

  # remove % from score column
  students <- students %>%
    mutate(score=gsub('\\%','',score))
  head(students)

  # change score column to numeric
  students <- students %>%
    mutate(score = as.numeric(score))
  head(students)
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  




