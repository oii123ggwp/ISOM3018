#setwd("~/Year 3 Doc/ISOM3018/Bank_direct_marketing")
#set your own work directory

library(dplyr)
library(ggplot2)
library(ggthemes)

#get the data
source_Bank_marketing <- read.csv("data/Bank_marketing.csv")

head(source_Bank_marketing)

#Data pre-processing
#There are several missing values in some categorical attributes, 
#all coded with the "unknown" label.

summary(source_Bank_marketing)
#no NA value, BUT according to descriptions
#There are several missing values in some categorical attributes, 
#all coded with the "unknown" label.
