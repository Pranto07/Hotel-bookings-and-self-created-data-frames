install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)

#viewing how my whole dataset look like
bookings_df <- read_csv("hotel_bookings.csv")
View(bookings_df)

#Preview of first 6 rows
head(bookings_df)

#More previews of columns and rows in total and data types
str(bookings_df)
glimpse(bookings_df) 

#Preview of column names
colnames(bookings_df)

#Detailed summary of the data
skim_without_charts(bookings_df)

#Cleaning data

#renaming a column
trimmed_df <- bookings_df %>% 
  select( hotel,is_canceled,lead_time) %>% 
  rename(hotel_type=hotel)

#Uniting two column to make a new
example_df <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year,c(arrival_date_month,arrival_date_year),sep = " ")
View(example_df)

#Calculating total guests and make a new column as guests
example2_df <- bookings_df %>%
  mutate(guests = adults + children + babies)
view(example2_df)

#Total numbers of bookings cancelled and mean lead time
example3_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))
View(example3_df)



