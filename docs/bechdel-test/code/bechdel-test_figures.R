library(tidyverse)

#set working directory
setwd("~/Desktop/bechdel-test/")

bechdel <- read.csv("data/2021-03-04_bechdel-test_processed.csv")

#create color scheme
pass_colors <- c("#d94701","#fd8d3c", "#fdbe85", "#d7b5d8", "#41b6c4")

#relevel and rename test levels

bechdel$clean_test <- factor(bechdel$clean_test, levels = c("nowomen", "notalk", "men", "dubious", "ok"), 
                             labels = c("no women", "women don't talk", "women talk about men", "dubious pass", "pass"))

#graph gross revenue and ROI for pass and fail 

roi_pass <-
ggplot(bechdel, aes(x = clean_test, y = ROI1, fill = clean_test)) + 
  geom_col() + 
  labs(x = NULL, y = "Return on investment (domestic)", fill = "Bechdel Test") + 
  scale_fill_manual(values = pass_colors) + 
  theme_classic() + 
  theme(axis.text.x = element_blank())

#save plot
ggsave("figures/bechdel-test_figure1.png", roi_pass, width = 5, height = 3, units = "in", dpi = 300)


#percent passing over time 
pass_over_time <-
bechdel %>%
  group_by(year) %>%
  mutate(total_movies = n()) %>% 
  group_by(year, clean_test) %>%
  summarise( n = n(), total = mean(total_movies), perc = n/total)

fig2<-
ggplot(data = pass_over_time, 
       aes(x = year, y = perc, fill = clean_test)) + 
  geom_bar(stat = 'identity') + 
  scale_fill_manual(values = pass_colors) + 
  theme_classic() + 
  ggtitle("Percent of movies passing the Bechdel test over time")

#save plots 

ggsave("figures/bechdel-test_figure2.png", fig2, width = 6, height = 3, units = "in", dpi = 300)


  