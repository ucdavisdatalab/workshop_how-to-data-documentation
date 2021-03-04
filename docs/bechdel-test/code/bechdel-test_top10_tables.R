library(tidyverse)
library(stargazer)

#set working directory
setwd("~/Desktop/bechdel-test/")

bechdel <- read.csv("data/2021-03-04_bechdel-test_processed.csv")

# top passing with ROI 

top_pass <- 
bechdel %>%
  filter(binary == "PASS") %>%
  slice_max(order_by = ROI1, n=10) %>%
  select(title, year, budget, domgross)


stargazer(top_pass, title = "Top 10 Movies that Passed, by Return-on-Investment", 
          summary = FALSE, out = "tables/bechdel-test_table1.txt", type = "text")


#top failing with ROI

top_fail <-
bechdel %>%
  filter(binary == "FAIL") %>%
  slice_max(order_by = ROI1, n=10) %>%
  select(title, year, clean_test, budget, domgross)



stargazer(top_fail, title = "Top 10 Movies that Failed, by Return-on-Investment", 
          summary = FALSE, out = "tables/bechdel-test_table2.txt", type = "text")


