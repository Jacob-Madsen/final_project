
source("~/Final project/scripts/data_organisation.R")



#########################################################################################

#experimentation/random below

######################################################################################


#percentage who dont want to live next to muslims
n_row_81 <- data_frame_81 %>% 
  select(avoid_minority_sects) %>% 
  filter(avoid_minority_sects != as.character("not checked")) %>%
  nrow()

data_frame_81 %>% 
  select(avoid_minority_sects) %>%
  mutate(percent = nrow(n_row_81) / nrow(data_frame_81))


#antallet fra forskellige socialklaser der ikke vil være nabore med fremmedarbejdrer
data_frame_81 %>% 
  filter(!is.na(avoid_foreign_workers)) %>% 
  filter(avoid_foreign_workers != "0") %>% 
  ggplot(aes(x = class_81)) + 
  geom_bar(aes(fill = avoid_foreign_workers), position = "dodge")


data_frame_17 %>% 
  filter(!is.na(avoid_immigrants_foreign_workers)) %>% 
  filter(avoid_immigrants_foreign_workers != "0") %>% 
  ggplot(aes(x = class_17)) + 
  geom_bar()


#hvor mange der ikke stoler på mennesker, som heller ikke vil bo ved siden af fremmedarbejdere
data_frame_count_81 <-  data_frame_81 %>% 
  count(trust_ppl_81,avoid_foreign_workers)

data_frame_count_17 <-  data_frame_17 %>% 
  count(trust_ppl_17,avoid_immigrants_foreign_workers)



data_frame_81 %>%
  group_by(class_81) %>%
  summarize(n_avoid_foreign_workers = n(avoid_foreign_workers))



#antallet fra forskellige socialklaser der ikke vil være nabore med fol fra anden race
data_frame_81 %>% 
  filter(!is.na(avoid_foreign_workers)) %>% 
  filter(avoid_other_race != "0") %>% 
  ggplot(aes(x = class_81)) + 
  geom_bar(aes(fill = as.logical(avoid_other_race)), position = "dodge")


data_frame_17 %>% 
  filter(!is.na(avoid_other_race)) %>% 
  filter(avoid_other_race != "0") %>% 
  ggplot(aes(x = class_17)) + 
  geom_bar(aes(fill = as.logical(avoid_other_race)), position = "dodge")



#Making plots out of the complex relations: Very ugly

data_frame_trust_proud_work_81$trust_proud_work <-  with(data_frame_81, paste0(data_frame_trust_proud_work_81$trust_ppl_81, data_frame_trust_proud_work_81$proud_81, data_frame_trust_proud_work_81$avoid_minority_sects))

data_frame_trust_proud_work_81 %>% 
  ggplot(aes(x = trust_proud_work, y = n)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 90,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#Mean of control question


#mean (!!result: vectors)
control_81 <- data_81$V64 
mean(na.omit(control_81))

control_90 <- data_90$V135
mean(na.omit(control_90))

control_99 <- data_99$V120
mean(na.omit(control_99))

control_08 <- data_08$V64
mean(na.omit(control_08))

control_17 <- data_17$V44
mean(na.omit(control_17))

#result: from 7 in 1981 to 8.4 in 2017 ... they think they have more control


summary(data_frame_17)



#sammenligning af kolonner i samme datasæt. Se: https://www.dummies.com/programming/r/how-to-create-a-data-frame-from-scratch-in-r/
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

view(data_frame_81)

#hvor mange der ikke stoler på mennesker, som heller ikke vil bo ved siden af fremmedarbejdere
data_frame_count_81 <-  data_frame_81 %>% 
  count(trust_ppl_81,avoid_foreign_workers)

view(data_frame_count_81)


#uden NA
data_frame_81 %>%
  filter(!is.na(avoid_foreign_workers)) %>%
  group_by(trust_ppl_81) %>%
  count(avoid_foreign_workers)













#hvor mange der ikke stoler på mennesker, som heller ikke vil bo ved siden af fremmedarbejdere
data_frame_81 %>% 
  filter(!is.na(avoid_foreign_workers)) %>%  
  ggplot(aes(x = trust_ppl_81)) + 
  geom_bar(aes(fill = as.logical(avoid_foreign_workers)), position = "dodge")



#how many had the different items
data_frame_81 %>%
  filter(!is.na(avoid_foreign_workers)) %>%
  group_by(trust_ppl_81) %>%
  summarise()


#samle kombinationer af svar
data_frame_count_81_2 <-  data_frame_81 %>% 
  count(trust_ppl_81,proud_81,avoid_foreign_workers, sort = TRUE)

view(data_frame_count_81_2)

data_frame_count_2$trust_proud_workers <-  paste(data_frame_count_2$trust_ppl_81, data_frame_count_2$proud_81, data_frame_count_2$avoid_foreign_workers)

view(data_frame_count_81)

data_frame_count_2_plot <- data_frame_count_2 %>%
  select(trust_proud_workers, n)
ggplot(aes(x = trust_proud_workers, y = n)) 

data_frame_count_2_plot +
  geom_bar()



#NB! Skal jeg undlade at fjerne NA når jeg laver 'kolonne-vektorerne?'

############################################ !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1



#########
#forsøg på at gøre det muligt at sætte flere års data i samme datasæt i række efter hinanden, se: https://stackoverflow.com/questions/48444790/tidydata-combining-two-dataset-from-different-years-r-to-make-a-tidy-data-se
data_trust_ppl_81 <- data_81 %>% 
  filter(!is.na(V61)) %>% 
  mutate(year = 1981) %>% 
  select(V61,year) %>%
  V61 <- factor(V61) %>% 
  as.character(V61)


##################

data_trust_ppl_90 %>% 
  ggplot(aes(x = V134)) + 
  geom_bar()


data_trust_ppl_90 <- data_90 %>% 
  filter(!is.na(V134)) %>% 
  mutate(year = 1990) %>% 
  select(V134,year)



data_trust_ppl_81 %>% 
  rename.values(V61, 1="one")

levels(V61) <- c("most can be trusted", "can't be too careful") 

("most can be trusted", "can't be too careful","undetermined")

view(data_trust_ppl_81)

as.character(trust_ppl_81)
as.character(trust_ppl_90)

trust_ppl_81_17 <- full_join(trust_ppl_81,trust_ppl_90, by = "")

view(trust_ppl_81_17)
##############################333
