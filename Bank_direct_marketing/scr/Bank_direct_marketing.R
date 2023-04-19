#setwd("~/Year 3 Doc/ISOM3018/Bank_direct_marketing")
#set your own work directory

library(tidyverse)
library(dplyr)
library(ggplot2)
library(ggthemes)

#get the data
source_Bank_marketing.df <- read.csv("data/Bank_marketing.csv")

source_Bank_marketing.tibble <- as_tibble(source_Bank_marketing.df)


#Data pre-processing
#There are several missing values in some categorical attributes, 
#all coded with the "unknown" label.

summary(source_Bank_marketing.tibble)
dim(source_Bank_marketing.tibble)
str(source_Bank_marketing.tibble)
glimpse(source_Bank_marketing.tibble)
#no NA value, BUT according to descriptions
#There are several missing values in some categorical attributes, 
#all coded with the "unknown" label.
#We should clear the missing values, 
#so we should remove the data with with the "unknown" label.

#some bug here, if I use or "|" in filter, I can not get the correct result.
#so I do it in this way. LOL
source_Bank_marketing.tibble %>% 
  filter(career != "unknown") %>%  
  filter(marriage != "unknown" ) %>% 
  filter(educational_background != "unknown") %>%  
  filter(default != "unknown" ) %>% 
  filter(mortgage != "unknown" ) %>% 
  filter(ploan != "unknown") %>% 
  filter(contact_type != "unknown") %>% 
  filter(month != "unknown") %>% 
  filter(day_of_week != "unknown") %>% 
  filter(previous_outcome != "unknown") -> Bank_marketing

head(Bank_marketing)
dim(Bank_marketing)


