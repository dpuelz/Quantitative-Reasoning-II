# R script for draft lottery exercise
install.packages("tidyverse")
library(tidyverse)

# load in the data
survey <- read.csv("../data/survey.csv")

## Question 1, consider summary() or dim() functions.
summary(survey)
which(is.na(survey$ideology))




# Question 2, consider mean() function or doing some data wrangling using group_by()
survey %>%
  group_by(year) %>%
  summarise(mean(ideology,na.rm=TRUE))


# Question 3
survey %>%
  group_by(draft) %>%
  summarise(mean(ideology,na.rm=TRUE))


# Question 4
survey %>%
  group_by(draft,state,year) %>%
  summarise(mean(ideology,na.rm=TRUE))

