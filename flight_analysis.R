# Import required packages
library(dplyr)
library(readr)

# Load the data
flights <- read_csv("flights2022-h2.csv")
airlines <- read_csv("airlines.csv")
airports <- read_csv("airports.csv")

flights
airlines
airports

# subtract city name & remove unnecessary variables
airports$city <- sub(".*/","",airports$tzone)
airports <- airports %>% select(faa,name,city)
flights <- flights %>% select(carrier,origin,dest,air_time)

# joining the tables
flights <- flights %>% 
  left_join(airlines,by=c("carrier")) %>%
  rename(airline_name=name) %>%
  left_join(airports,by=c("origin"="faa")) %>%
  rename(name_of_origin=name,city_of_origin=city) %>%
  left_join(airports,by=c("dest"="faa")) %>%
  rename(name_of_destination=name,city_of_destination=city)
head(flights,20)


# 1. Save your answer as a data frame called frequent with one row and a minimum of two columns: airline_name, airport_name.

frequent <- flights %>% 
  filter(city_of_origin=="New_York") %>%
  count(airline_name,name_of_destination) %>%
  slice_max(n) %>%
  rename(airport_name=name_of_destination)

frequent

# 2. Find the airport that has the longest average flight duration (in hours) from NYC. What is the name of this airport?

#Save your answer as a data frame called longest with one row and a minimum of two columns: airline_name, airport_name.

longest <- flights %>% 
  filter(city_of_origin=="New_York") %>%
  group_by(name_of_destination,airline_name) %>% 
  summarise(average_flight_duration_in_hours=mean(air_time,na.rm = TRUE),.groups = "drop") %>%
  slice_max(average_flight_duration_in_hours,n = 1) %>%
  rename(airport_name=name_of_destination)
longest


# 3. Which airport is the least frequented destination for flights departing from JFK?

#Save your answer as a character string called least.

least <- flights %>% 
  filter(origin=="JFK") %>%
  count(name_of_destination) %>%
  slice_min(n) %>%
  pull(name_of_destination)

least
