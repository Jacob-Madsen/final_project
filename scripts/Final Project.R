#Loading the datasets

library(tidyverse)

#1981
#load data from 1981 and call it data_81_83
data_81 <- read_delim("~/Final project/data/data829_1981-1983.csv",";", escape_double = FALSE, trim_ws = TRUE)

#1990
#load data from 1990 and call it data_90
data_90 <- read_delim("~/Final project/data/data1523_1990.csv",";", escape_double = FALSE, trim_ws = TRUE)

#1999
#load data from 1999 and call it data_99
data_99 <- read_delim("~/Final project/data/data5837_1999.csv",";", escape_double = FALSE, trim_ws = TRUE)

#2008
#load data from 2008 and call it data_08
data_08 <- read_delim("~/Final project/data/data21432_2008.csv",";", escape_double = FALSE, trim_ws = TRUE)

#2017
#load data from 2017 and call it data_08
data_17 <- read_delim("~/Final project/data/data34110_2017.csv",";", escape_double = FALSE, trim_ws = TRUE)


##################################################################################

#want to have as neighbour
neighbour_81 <- data_81 %>%
  filter(!is.na(V39)) %>%
  select(V39:V49)

neighbour_81 %>% 
  geom_point()

count(V39)

neighbour_81_long <- neighbour_81 %>% 
  pivot_longer(cols = c(V39,V40,V41,V42,V43,V44,V45,V46,V47,V48,V49), names_to = "question_option", values_to = "answer")

view(neighbour_81_long)

######################################################################

neighbour_81 +
  ggplot(aes(x = V40, y = V41)) +
  geom_point()
 
data_81 %>% 
  filter(V61 == "2") %>% 
  select(V61,V313) %>% 
  view()

