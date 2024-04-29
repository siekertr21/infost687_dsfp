#load libraries
library(dplyr) # for data manipulation
library(ggplot2) # for data visualization
library(moments) # for statistical analysis
library(tidyverse) # for data transformations
gitcreds::gitcreds_set() # sets github credentials
df <- read.csv(file="C:/Users/Sieke/OneDrive/Desktop/Github Repositories/infost687_dsfp/ds_salaries.csv", header=TRUE)

#view structure of dataset
str(df)
summary(df)

#-----------------------------exploratory analysis-----------------------------

#Histogram showing distribution of salaries by company size
ggplot(df, aes(x = salary_in_usd))+ 
  geom_histogram(binwidth = 50000, fill = "skyblue", color = "black")+ #histogram
  facet_wrap(~company_size, scales="free")+ #breaks into multiple graphs
  labs(title = "Histogram of Salary", x = "Salaries", y = "Density")+ #labels
  theme(axis.text.x = element_text(angle=90))+ #angles text
  scale_x_continuous(breaks=seq(0, 800000, by=50000))+ #sets axis
  scale_y_continuous(breaks=seq(0, 200, by=20))+ #sets axis
  theme_minimal()+
  theme(axis.text.x=element_text(angle=45, hjust=1.5),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor.x = element_blank())  # Remove x axis gridlines


