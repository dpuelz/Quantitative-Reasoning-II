# R script for draft lottery exercise
library(tidyverse)

# load in the data
survey <- read.csv("../data/survey.csv")

## Question 1, consider summary() or dim() functions.

# Question 2, consider mean() function or doing some data wrangling using group_by()
survey %>%
  group_by(___FILL IN____) %>%
  summarise(mean(___FILL IN____,na.rm=TRUE))


# Question 3


# Question 4

