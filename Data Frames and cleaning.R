install.packages("here")
install.packages("skimr")
install.packages("janitor")
install.packages("dplyr")
install.packages("palmerpenguins")
install.packages("tidyverse")
library(here)
library(skimr)
library(janitor)
library(dplyr)
library(palmerpenguins)
library(tidyverse)

#creating data Frame

id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee1<- data.frame(id, name, job_title)
print(employee)

#Separate names as First name and Last name
separate(employee,name,into=c('First name', 'Last name'),sep =" ") 


#New data frame with the new columns

first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee2<- data.frame(first_name,last_name,job_title)
print(employee2)

#unite both names first and last as name
unite(employee2,'name',first_name,last_name, sep= " ")

#using mutate for calculate and add new column (gm to kg & mm to m)
view(penguins)
penguins %>% 
  mutate(body_mass_kg=body_mass_g*1000,flipper_length_m = flipper_length_mm/1000)
