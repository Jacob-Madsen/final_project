

source("~/Final project/scripts/data_organisation.R")




################################################################3

#Plotting from the dataframes

##########################################################################

###############################
###############################
#Development in the percentage of the answers

#trust

#P1.1
#1981
data_frame_81 %>% 
  count(trust_ppl_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>% 
  ggplot(aes(x = trust_ppl_81, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.2
#1990
data_frame_90 %>% 
  count(trust_ppl_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>% 
  ggplot(aes(x = trust_ppl_90, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.3
#1999
data_frame_99 %>% 
  count(trust_ppl_99) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = trust_ppl_99, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.4
#2008
data_frame_08 %>% 
  count(trust_ppl_08) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = trust_ppl_08, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.5
#2017
data_frame_17 %>% 
  count(trust_ppl_17) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = trust_ppl_17, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#tendency: People are bevoming more trusting in other people 


###################################################################

#avoid muslims

#P1.6
#1981
data_frame_81 %>% 
  count(avoid_minority_sects) %>% 
  mutate(percent = (n / sum(n)) * 100) %>% 
  ggplot(aes(x = avoid_minority_sects, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.7
#1990
data_frame_90 %>% 
  count(avoid_muslims) %>% 
  mutate(percent = (n / sum(n)) * 100) %>% 
  ggplot(aes(x = avoid_muslims, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)


#P1.8
#1999
data_frame_99 %>% 
  count(avoid_muslims) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = avoid_muslims, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.9
#2008
data_frame_08 %>% 
  count(avoid_muslims) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = avoid_muslims, y = percent)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.10
#2017
data_frame_17 %>% 
  count(avoid_muslims) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = avoid_muslims, y = percent)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)
  
#tendency: resentment agains muslimst topping in 1990 and 1999 (!!)


###################################################


#immigrant workers allowed/not allowed

#P1.11
#1990 (question: are immigrants allowed to work if there are not enough jobs for Danes) Most allow
data_frame_90 %>% 
  count(allow_work_90) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = allow_work_90, y = percent)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.12
#1999: Most 'limit amount of immigrants'
data_frame_99 %>% 
  count(allow_work_99) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = allow_work_99, y = percent)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.13
#2008: Most 'limit amount of immigrants' (compared to 1990: more 'as long as there is jobs for danes' and more 'everybody allowed' )
data_frame_08 %>% 
  count(allow_work_08) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = allow_work_08, y = percent)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)

#P1.14
#2017 (if few jobs - should Danes be prioritized over immigrants?) Most: 'dont agree and 'either or' - tendency of resentmen against foreign workers
data_frame_17 %>% 
  count(allow_work_17) %>% 
  mutate(percent = (n / sum(n)) * 100)%>% 
  ggplot(aes(x = allow_work_17, y = percent)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(label=round(percent, digits = 2)), vjust=1.6, color="white", size=3.5)


#Tendency clear: Resentment against foreigners taking jobs (topping in 1999) - this resentment continues until today, but maybe not at the same strength (so not the gradual incresing xenophobia, but it is going up and down)


###############################
###############################
#Simple comparisons of levels in different coloumns

#P2.1
#Trust in people and reluctance to having foregin workers as neighbours
#1981
data_frame_81 %>%
  filter(!is.na(avoid_foreign_workers)) %>%
  group_by(trust_ppl_81) %>%
  count(avoid_foreign_workers, sort = TRUE)


###############################
###############################
#Complex comparisons of levels in different coloumns

#P3.1
#trust // proud // foregin worker = is there a correlation bewteen nationlism, mistrust of other people and xenofobism?
#1981
data_frame_81 %>% 
  filter(!is.na(avoid_foreign_workers)) %>%
  group_by(trust_ppl_81) %>%
  count(trust_ppl_81,proud_81,avoid_foreign_workers, sort = TRUE) %>% 
  view()

#P3.2
#1990
data_frame_90 %>% 
  filter(!is.na(avoid_foreign_workers)) %>%
  group_by(trust_ppl_90) %>%
  count(trust_ppl_90,proud_90,avoid_foreign_workers, sort = TRUE) %>% 
  view()

#P3.3
#1999
data_frame_99 %>% 
  filter(!is.na(avoid_immigrants)) %>%
  group_by(trust_ppl_99) %>%
  count(trust_ppl_99,proud_99,avoid_immigrants, sort = TRUE) %>% 
  view()

#P3.4
#2008
data_frame_08 %>% 
  filter(!is.na(avoid_immigrants)) %>%
  group_by(trust_ppl_08) %>%
  count(trust_ppl_08,proud_08,avoid_immigrants, sort = TRUE) %>% 
  view()

#P3.5
#2017
data_frame_17 %>% 
  filter(!is.na(avoid_immigrants_foreign_workers)) %>%
  group_by(trust_ppl_17) %>%
  count(trust_ppl_17,proud_17,avoid_immigrants_foreign_workers, sort = TRUE) %>% 
  view()


#result: No, not really


#trust // proud // foregin worker = is there a correlation bewteen nationlism, mistrust of other people and xenofobism?
#what about mistrust against muslims/minority sects

#P3.6
#1981
data_frame_81 %>% 
  filter(!is.na(avoid_minority_sects)) %>%
  group_by(trust_ppl_81) %>%
  count(trust_ppl_81,proud_81,avoid_minority_sects, sort = TRUE) %>% 
  view()

#P3.7
#1990
data_frame_90 %>% 
  filter(!is.na(avoid_muslims)) %>%
  group_by(trust_ppl_90) %>%
  count(trust_ppl_90,proud_90,avoid_muslims, sort = TRUE) %>% 
  view()

#P3.8
#1999
data_frame_99 %>% 
  filter(!is.na(avoid_muslims)) %>%
  group_by(trust_ppl_99) %>%
  count(trust_ppl_99,proud_99,avoid_muslims, sort = TRUE) %>% 
  view()

#P3.9
#2008
data_frame_08 %>% 
  filter(!is.na(avoid_muslims)) %>%
  group_by(trust_ppl_08) %>%
  count(trust_ppl_08,proud_08,avoid_muslims, sort = TRUE) %>% 
  view()

#P3.10
#2017
data_frame_17 %>% 
  filter(!is.na(avoid_muslims)) %>%
  group_by(trust_ppl_17) %>%
  count(trust_ppl_17,proud_17,avoid_muslims, sort = TRUE) %>% 
  view()


#result: No, not really - it looks like a similar result as with foreign workers



#######################################
#######################################
#Percent-based comparisons of answers on the questions


####################################################

#Based on socio-economial identification

#1
#Percentage of the different socio- economic classes that would not like to be neighbours with immigrants or foreign workers
#NB: Socio- economic class is only available for 1981 and 2017

#P4.1
#1981: mainly (not so significant) upperclass and higher middleclass (AB and C1)
data_frame_81 %>% 
  count(class_81,avoid_foreign_workers) %>% 
  group_by(class_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_foreign_workers != "not checked") %>% 
  ggplot(aes(x = class_81, y = percent, fill = avoid_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.2
#2017: mainly working class
data_frame_17 %>% 
  count(class_17,avoid_immigrants_foreign_workers) %>% 
  group_by(class_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants_foreign_workers != "not checked") %>%
  filter(class_17 != "NA") %>% 
  ggplot(aes(x = class_17, y = percent, fill = avoid_immigrants_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)


#2
#Percentage of the different socio- economic classes that would not like to be neighbours with people of 'antoher race'

#P4.3
#1981: mainly upperclass and higher middleclass (AB and C1)
data_frame_81 %>% 
  count(class_81,avoid_other_race) %>% 
  group_by(class_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  ggplot(aes(x = class_81, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.4
#2017: Mainly underclass and working class
data_frame_17 %>% 
  count(class_17,avoid_other_race) %>% 
  group_by(class_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  filter(class_17 != "NA") %>% 
  ggplot(aes(x = class_17, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)


#3
#Percentage of the different socio- economic classes that would not like to be neighbours with muslims/minority sects

#P4.5
#1981: mainly lower middleclass (C2)
data_frame_81 %>% 
  count(class_81,avoid_minority_sects) %>% 
  group_by(class_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_minority_sects != "not checked") %>% 
  ggplot(aes(x = class_81, y = percent, fill = avoid_minority_sects)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.6
#2017: Mainly working class and lower middleclass
data_frame_17 %>% 
  count(class_17,avoid_muslims) %>% 
  group_by(class_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(class_17 != "NA") %>% 
  ggplot(aes(x = class_17, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)


#4
#Percentage of the different socio- economic classes who trust and distrust other people

#P4.7
#1981: Trusting = mainly upperclass and higher middleclass (AB and C1) - not so significant difference
data_frame_81 %>% 
  count(class_81,trust_ppl_81) %>% 
  group_by(class_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  ggplot(aes(x = class_81, y = percent, fill = trust_ppl_81)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.8
#2017: Trusting = Mainly upper class and higher middleclass
data_frame_17 %>% 
  count(class_17,trust_ppl_17) %>% 
  group_by(class_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  ggplot(aes(x = class_17, y = percent, fill = trust_ppl_17)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)


#5
#Percentage of the different socio- economic classes who allow or dont allow foreigners to work in the country

#NB: Class only in 1981 and 2017 and allow work only available in 1990 and 2017, so only 2017 present:

#P4.9
#2017: (if few jobs - should Danes be prioritized over immigrants?) Stairs: Ppl seeing themselves as underclass and working class have more tendency to not allow foreigners to work in Denmark while the opposite is the tendency of ppl who think themselves upper class
data_frame_17 %>% 
  count(class_17,allow_work_17) %>% 
  group_by(class_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(class_17 != "NA") %>% 
  filter(allow_work_17 != "NA") %>% 
  ggplot(aes(x = class_17, y = percent, fill = allow_work_17)) +
  geom_bar(stat = "identity", position = "dodge")


##################################################

#Based on pride on the fatherland

#1
#Percentage of the national-proud and un-prooud that would not like to be neighbours with immigrants or foreign workers

#P4.10
#1981: Mainly un-proud
data_frame_81 %>% 
  count(proud_81,avoid_foreign_workers) %>% 
  group_by(proud_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_foreign_workers != "not checked") %>% 
  ggplot(aes(x = proud_81, y = percent, fill = avoid_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.11
#2017: Mainly proud
data_frame_17 %>% 
  count(proud_17,avoid_immigrants_foreign_workers) %>% 
  group_by(proud_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants_foreign_workers != "not checked") %>%
  filter(proud_17 != "NA") %>% 
  ggplot(aes(x = proud_17, y = percent, fill = avoid_immigrants_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#2
#Percentage of the national-proud and un-prooud that would not like to be neighbours with ppl of 'other race'


#P4.12
#1981: Mainly un-proud
data_frame_81 %>% 
  count(proud_81,avoid_other_race) %>% 
  group_by(proud_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  ggplot(aes(x = proud_81, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.13
#2017: Mainly un-proud (not significant)... NB: Very small percentage! (to see try to remove: filter(avoid_other_race != "not checked") %>% )
data_frame_17 %>% 
  count(proud_17,avoid_other_race) %>% 
  group_by(proud_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  filter(proud_17 != "NA") %>% 
  ggplot(aes(x = proud_17, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#3
#Percentage of the the national-proud and un-proud that would not like to be neighbours with muslims/minority sects

#P4.14
#1981: Mainly un-proud (not significant)
data_frame_81 %>% 
  count(proud_81,avoid_minority_sects) %>% 
  group_by(proud_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_minority_sects != "not checked") %>% 
  ggplot(aes(x = proud_81, y = percent, fill = avoid_minority_sects)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.15
#1990: Mainly proud
data_frame_90 %>% 
  count(proud_90,avoid_muslims) %>% 
  group_by(proud_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  ggplot(aes(x = proud_90, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.16
#2017: Mainly proud
data_frame_17 %>% 
  count(proud_17,avoid_muslims) %>% 
  group_by(proud_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(proud_17 != "NA") %>% 
  ggplot(aes(x = proud_17, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)



##################################################

#Based on geographical identification

#1
#Percentage of the different geographical identifications that would not like to be neighbours with immigrants or foreign workers

#P4.17
#1981: Mainly 'europeans'
data_frame_81 %>% 
  count(geograph_01_81,avoid_foreign_workers) %>% 
  group_by(geograph_01_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_foreign_workers != "not checked") %>% 
  ggplot(aes(x = geograph_01_81, y = percent, fill = avoid_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.18
#2008: Exept from 'dont know' it is the more locally oriented who dont like to be neighbours to immigrants - but the 'eeuropeans' is in a high grade of doubt
data_frame_08 %>% 
  count(geograph_01_08,avoid_immigrants) %>% 
  group_by(geograph_01_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants != "not checked") %>%
  filter(avoid_immigrants != "dont know") %>%
  filter(geograph_01_08 != "NA") %>% 
  filter(geograph_01_08 != "dont know") %>% 
  ggplot(aes(x = geograph_01_08, y = percent, fill = avoid_immigrants)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#2
#Percentage of the of the the different geographical identifications that would not like to be neighbours with people of 'antoher race'

#P4.19
#1981: Mainly more locally oriented
data_frame_81 %>% 
  count(geograph_01_81,avoid_other_race) %>% 
  group_by(geograph_01_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  ggplot(aes(x = geograph_01_81, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.20
#2008: Mainly more locally oriented
data_frame_08 %>% 
  count(geograph_01_08,avoid_other_race) %>% 
  group_by(geograph_01_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>%
  filter(avoid_other_race != "dont know") %>%
  filter(geograph_01_08 != "NA") %>%
  ggplot(aes(x = geograph_01_08, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")+
  scale_x_discrete(drop = FALSE)

#3
#Percentage of the of the the different geographical identifications that would not like to be neighbours with muslims/minority sects

#P4.21
#1981: Quite mixed - mainly local and the whole world
data_frame_81 %>% 
  count(geograph_01_81,avoid_minority_sects) %>% 
  group_by(geograph_01_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_minority_sects != "not checked") %>% 
  ggplot(aes(x = geograph_01_81, y = percent, fill = avoid_minority_sects)) +
  geom_bar(stat = "identity", position = "dodge")+
  scale_x_discrete(drop = FALSE)

#P4.22
#1990: Locally and europe (only whole world not high)
data_frame_90 %>% 
  count(geograph_01_90,avoid_muslims) %>% 
  group_by(geograph_01_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(geograph_01_90 != "dont know") %>%
  ggplot(aes(x = geograph_01_90, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")+
  scale_x_discrete(drop = FALSE)

#P4.23
#2008: Mainly locally oriented
data_frame_08 %>% 
  count(geograph_01_08,avoid_muslims) %>% 
  group_by(geograph_01_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(avoid_muslims != "dont know") %>%
  ggplot(aes(x = geograph_01_08, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")+
  scale_x_discrete(drop = FALSE)


#4
#Percentage of the of the the different geographical identifications that would and would not allow foreigners to work in Denmark

#P4.24
#1990: Opposite stairs: Locally oriented dont allow - Globally oriente allow
data_frame_90 %>% 
  count(geograph_01_90,allow_work_90) %>% 
  group_by(geograph_01_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(geograph_01_90 != "dont know") %>%
  ggplot(aes(x = geograph_01_90, y = percent, fill = allow_work_90)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.25
#1999: Locally oriented (VERY MUCH) dont allow - Globally oriented allow
data_frame_99 %>% 
  count(geograph_01_99,allow_work_99) %>% 
  group_by(geograph_01_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(geograph_01_99 != "dont know") %>%
  ggplot(aes(x = geograph_01_99, y = percent, fill = allow_work_99)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.26
#2008: Locally oriented dont allow - Globally oriente allow - but less significant
data_frame_08 %>% 
  count(geograph_01_08,allow_work_08) %>% 
  group_by(geograph_01_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>%  
  filter(geograph_01_08 != "dont know") %>%
  filter(allow_work_08 != "NA") %>%
  ggplot(aes(x = geograph_01_08, y = percent, fill = allow_work_08)) +
  geom_bar(stat = "identity", position = "dodge")

#Peak of resentment against foreign workers in 1999 - but all years: Clear tendency that the locally oriented dont want foreigners to limit amount of foreigners


##################################################################

#Based on sex

#1
#Percentage of the different sexual orientations that would not like to be neighbours with immigrants or foreign workers

#P4.27
#1981: A bit more female
data_frame_81 %>% 
  count(sex_81,avoid_foreign_workers) %>% 
  group_by(sex_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_foreign_workers != "not checked") %>% 
  ggplot(aes(x = sex_81, y = percent, fill = avoid_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.28
#1990: More male
data_frame_90 %>% 
  count(sex_90,avoid_foreign_workers) %>% 
  group_by(sex_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_foreign_workers != "not checked") %>% 
  ggplot(aes(x = sex_90, y = percent, fill = avoid_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.29
#1999: A bit more female
data_frame_99 %>% 
  count(sex_99,avoid_immigrants) %>% 
  group_by(sex_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants != "not checked") %>% 
  filter(avoid_immigrants != "dont know") %>% 
  ggplot(aes(x = sex_99, y = percent, fill = avoid_immigrants)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.30
#2008: A bit more male
data_frame_08 %>% 
  count(sex_08,avoid_immigrants) %>% 
  group_by(sex_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants != "not checked") %>%
  filter(avoid_immigrants != "dont know") %>%
  ggplot(aes(x = sex_08, y = percent, fill = avoid_immigrants)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.31
#2017: More male
data_frame_17 %>% 
  count(sex_17,avoid_immigrants_foreign_workers) %>% 
  group_by(sex_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants_foreign_workers != "not checked") %>%
  filter(avoid_immigrants_foreign_workers != "dont know") %>%
  ggplot(aes(x = sex_17, y = percent, fill = avoid_immigrants_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge")

#2
#Percentage of the of the the different sexs that would not like to be neighbours with people of 'antoher race'

#P4.32
#1981: More female
data_frame_81 %>% 
  count(sex_81,avoid_other_race) %>% 
  group_by(sex_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  ggplot(aes(x = sex_81, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.33
#1990: More male
data_frame_90 %>% 
  count(sex_90,avoid_other_race) %>% 
  group_by(sex_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  ggplot(aes(x = sex_90, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.34
#1999: More male
data_frame_99 %>% 
  count(sex_99,avoid_other_race) %>% 
  group_by(sex_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  filter(avoid_other_race != "dont know") %>%
  ggplot(aes(x = sex_99, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.35
#2008: More male
data_frame_08 %>% 
  count(sex_08,avoid_other_race) %>% 
  group_by(sex_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>%
  filter(avoid_other_race != "dont know") %>%
  ggplot(aes(x = sex_08, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.36
#2017: More (double amount) male 
data_frame_17 %>% 
  count(sex_17,avoid_other_race) %>% 
  group_by(sex_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>%
  filter(avoid_other_race != "dont know") %>%
  ggplot(aes(x = sex_17, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")

#3
#Percentage of the different sexual orientations that would not like to be neighbours with muslims/minority sects

#P4.37
#1981: More housewives, less working women
data_frame_81 %>% 
  count(sex_81,avoid_minority_sects) %>% 
  group_by(sex_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_minority_sects != "not checked") %>% 
  ggplot(aes(x = sex_81, y = percent, fill = avoid_minority_sects)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.38
#1990: More male
data_frame_90 %>% 
  count(sex_90,avoid_muslims) %>% 
  group_by(sex_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>%
  ggplot(aes(x = sex_90, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.39
#1999: More male
data_frame_99 %>% 
  count(sex_99,avoid_muslims) %>% 
  group_by(sex_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>%
  filter(avoid_muslims != "dont know") %>%
  ggplot(aes(x = sex_99, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.40
#2008: More male
data_frame_08 %>% 
  count(sex_08,avoid_muslims) %>% 
  group_by(sex_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(avoid_muslims != "dont know") %>%
  ggplot(aes(x = sex_08, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.41
#2017: More male
data_frame_17 %>% 
  count(sex_17,avoid_muslims) %>% 
  group_by(sex_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>%
  filter(avoid_muslims != "dont know") %>%
  ggplot(aes(x = sex_17, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")

#4
#Percentage of the different sexual orientations that would like or not like foreign workers in Denmark 

#P4.42
#1990: Very similar - a bit more female dont allow foreign workers
data_frame_90 %>% 
  count(sex_90,allow_work_90) %>% 
  group_by(sex_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  ggplot(aes(x = sex_90, y = percent, fill = allow_work_90))+
  geom_bar(stat = "identity", position = "dodge")

#P4.43
#1999: Very similar - a bit more female dont allow foreign workers
data_frame_99 %>% 
  count(sex_99,allow_work_99) %>% 
  group_by(sex_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(allow_work_99 != "NA") %>%
  ggplot(aes(x = sex_99, y = percent, fill = allow_work_99)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.44
#2008: Very similar - a bit more female dont allow foreign workers
data_frame_08 %>% 
  count(sex_08,allow_work_08) %>% 
  group_by(sex_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(allow_work_08 != "NA") %>%
  ggplot(aes(x = sex_08, y = percent, fill = allow_work_08)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.45
#2017: (if few jobs - should Danes be prioritized over immigrants?) Male a bit more agreeing
data_frame_17 %>% 
  count(sex_17,allow_work_17) %>% 
  group_by(sex_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(allow_work_17 != "Na") %>%
  ggplot(aes(x = sex_17, y = percent, fill = allow_work_17)) +
  geom_bar(stat = "identity", position = "dodge")

##################################################################

#Based on education

#1
#Percentage of the different educational levels that would not like to be neighbours with immigrants or foreign workers

#P4.46
#1981: More the 'very ealy done' and the around 18yrs old
data_frame_81 %>% 
  count(education_age_81,avoid_foreign_workers) %>% 
  group_by(education_age_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_foreign_workers != "not checked") %>% 
  ggplot(aes(x = education_age_81, y = percent, fill = avoid_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.47
#1990: Very low representation in the higher educations, except from the technical higher education
data_frame_90 %>% 
  count(education_90,avoid_foreign_workers) %>% 
  group_by(education_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_foreign_workers != "not checked") %>% 
  filter(education_90 != "other") %>% 
  filter(education_90 != "NA") %>% 
  ggplot(aes(x = education_90, y = percent, fill = avoid_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.48
#1999: High representation in the shorter educations
data_frame_99 %>% 
  count(education_99,avoid_immigrants) %>% 
  group_by(education_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants != "not checked") %>% 
  filter(avoid_immigrants != "dont know") %>% 
  filter(education_99 != "other") %>% 
  filter(education_99 != "NA") %>% 
  ggplot(aes(x = education_99, y = percent, fill = avoid_immigrants)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.49
#2008: High representation in the shorter educations (except social- and health) and in the military 
data_frame_08 %>% 
  count(education_08,avoid_immigrants) %>% 
  group_by(education_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants != "not checked") %>% 
  filter(avoid_immigrants != "dont know") %>% 
  filter(education_08 != "other") %>% 
  filter(education_08 != "NA") %>% 
  ggplot(aes(x = education_08, y = percent, fill = avoid_immigrants)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.50
#2017: High representation in the shorter educations, but not so significant (f.ex. university bachelor same as gymnasium)
data_frame_17 %>% 
  count(education_17,avoid_immigrants_foreign_workers) %>% 
  group_by(education_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_immigrants_foreign_workers != "not checked") %>% 
  filter(avoid_immigrants_foreign_workers != "dont know") %>% 
  filter(education_17 != "other") %>% 
  filter(education_17 != "NA") %>% 
  ggplot(aes(x = education_17, y = percent, fill = avoid_immigrants_foreign_workers)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))


#2
#Percentage of the different educational levels that would not like to be neighbours with other race

#P4.51
#1981: More the 'very ealy done' and the around 16yrs old, but not very significant difference
data_frame_81 %>% 
  count(education_age_81,avoid_other_race) %>% 
  group_by(education_age_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  ggplot(aes(x = education_age_81, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.52
#1990: Very high representation in the unskilled (special worker course), lowest in the university
data_frame_90 %>% 
  count(education_90,avoid_other_race) %>% 
  group_by(education_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  filter(education_90 != "other") %>% 
  filter(education_90 != "NA") %>% 
  ggplot(aes(x = education_90, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.53
#1999: Extremely high representation in the the unskilled (special worker course), low in the university
data_frame_99 %>% 
  count(education_99,avoid_other_race) %>% 
  group_by(education_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  filter(avoid_other_race != "dont know") %>% 
  filter(education_99 != "other") %>% 
  filter(education_99 != "NA") %>% 
  ggplot(aes(x = education_99, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.54
#2008: High representation in all except the university style educations 
data_frame_08 %>% 
  count(education_08,avoid_other_race) %>% 
  group_by(education_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  filter(avoid_other_race != "dont know") %>% 
  filter(education_08 != "other") %>% 
  filter(education_08 != "NA") %>% 
  ggplot(aes(x = education_08, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.55
#2017: Low in gymnasium an longer (university) educations, high in preschool dropouts and skilled education
data_frame_17 %>% 
  count(education_17,avoid_other_race) %>% 
  group_by(education_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_other_race != "not checked") %>% 
  filter(avoid_other_race != "dont know") %>% 
  filter(education_17 != "other") %>% 
  filter(education_17 != "NA") %>% 
  ggplot(aes(x = education_17, y = percent, fill = avoid_other_race)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))


#3
#Percentage of the different educational levels that would not like to be neighbours with muslims/minority sects

#P4.56
#1981: More the 'very ealy done' and the around 18yrs old
data_frame_81 %>% 
  count(education_age_81,avoid_minority_sects) %>% 
  group_by(education_age_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_minority_sects != "not checked") %>% 
  ggplot(aes(x = education_age_81, y = percent, fill = avoid_minority_sects)) +
  geom_bar(stat = "identity", position = "dodge")

#P4.57
#1990: Very high representation in the military educated and shorter educations
data_frame_90 %>% 
  count(education_90,avoid_muslims) %>% 
  group_by(education_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(education_90 != "other") %>% 
  filter(education_90 != "NA") %>% 
  ggplot(aes(x = education_90, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.58
#1999: Extremely high representation in the the unskilled (special worker course), low in the university and shorter technical
data_frame_99 %>% 
  count(education_99,avoid_muslims) %>% 
  group_by(education_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(avoid_muslims != "dont know") %>% 
  filter(education_99 != "other") %>% 
  filter(education_99 != "NA") %>% 
  ggplot(aes(x = education_99, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.59
#2008: High representation in military education and shorter educations
data_frame_08 %>% 
  count(education_08,avoid_muslims) %>% 
  group_by(education_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(avoid_muslims != "dont know") %>% 
  filter(education_08 != "other") %>% 
  filter(education_08 != "NA") %>% 
  ggplot(aes(x = education_08, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.60
#2017: High in licentate and the shorter educations
data_frame_17 %>% 
  count(education_17,avoid_muslims) %>% 
  group_by(education_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(avoid_muslims != "not checked") %>% 
  filter(avoid_muslims != "dont know") %>% 
  filter(education_17 != "other") %>% 
  filter(education_17 != "NA") %>% 
  ggplot(aes(x = education_17, y = percent, fill = avoid_muslims)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))


#4
#Percentage of the different educational levels that trust or distrust other people

#P4.61
#1981: Quite muddy - (!) lowesr and higest educations quite trusting - lower not trusting - lower are more insecure
data_frame_81 %>% 
  count(education_age_81,trust_ppl_81) %>% 
  group_by(education_age_81) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  ggplot(aes(x = education_age_81, y = percent, fill = trust_ppl_81)) +
  geom_bar(stat = "identity", position = "dodge") + 
  scale_x_discrete(drop = FALSE)

#P4.62
#1990: Quite muddy - longer educations and shorter = more insecure - shorter educations less trustful, except business
data_frame_90 %>% 
  count(education_90,trust_ppl_90) %>% 
  group_by(education_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(education_90 != "other") %>% 
  filter(education_90 != "NA") %>%
  ggplot(aes(x = education_90, y = percent, fill = trust_ppl_90)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.63
#1999: Shorter educations are not trustful, longer and business are trustful
data_frame_99 %>% 
  count(education_99,trust_ppl_99) %>% 
  group_by(education_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(education_99 != "other") %>% 
  filter(education_99 != "NA") %>%
  ggplot(aes(x = education_99, y = percent, fill = trust_ppl_99)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.64
#2008: Shorter educations and military are not trusting (would be stairs if ordered differently - except mmilitary)
data_frame_08 %>% 
  count(education_08,trust_ppl_08) %>% 
  group_by(education_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(education_08 != "other") %>% 
  filter(education_08 != "NA") %>%
  ggplot(aes(x = education_08, y = percent, fill = trust_ppl_08)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.65
#2017: 'Stairs' from low educated (untrustfull) to high educated (trustfull)
data_frame_17 %>% 
  count(education_17,trust_ppl_17) %>% 
  group_by(education_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(education_17 != "other") %>% 
  filter(education_17 != "NA") %>% 
  ggplot(aes(x = education_17, y = percent, fill = trust_ppl_17)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))


#5
#Percentage of the different educational levels that allow or dont allow foreign workers

#P4.66
#1990: Shorter educations dont allow, longer allow
data_frame_90 %>% 
  count(education_90,allow_work_90) %>% 
  group_by(education_90) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(education_90 != "other") %>% 
  filter(education_90 != "NA") %>% 
  filter(allow_work_90 != "NA") %>%
  ggplot(aes(x = education_90, y = percent, fill = allow_work_90)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.67
#1999: Quite muddy, but shorter educations kinda dont allow, while longer educations kinda allow, but not significantly. Everybody: LIMIT!
data_frame_99 %>% 
  count(education_99,allow_work_99) %>% 
  group_by(education_99) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(education_99 != "other") %>% 
  filter(education_99 != "NA") %>%
  filter(allow_work_99 != "NA") %>%
  ggplot(aes(x = education_99, y = percent, fill = allow_work_99)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.68
#2008: Quite muddy
data_frame_08 %>% 
  count(education_08,allow_work_08) %>% 
  group_by(education_08) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(education_08 != "other") %>% 
  filter(education_08 != "NA") %>%
  filter(allow_work_08 != "NA") %>%
  ggplot(aes(x = education_08, y = percent, fill = allow_work_08)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))

#P4.69
#2017: (if few jobs - should Danes be prioritized over immigrants?) Very short education: Allow; Short education: Dont allow; Long education: Allow
data_frame_17 %>% 
  count(education_17,allow_work_17) %>% 
  group_by(education_17) %>% 
  mutate(percent = (n / sum(n)) * 100) %>%
  ungroup() %>% 
  filter(education_17 != "other") %>% 
  filter(education_17 != "NA") %>% 
  filter(allow_work_17 != "NA") %>% 
  ggplot(aes(x = education_17, y = percent, fill = allow_work_17)) +
  geom_bar(stat = "identity", position = "dodge")+
  theme(axis.text.x = element_text(colour = "grey20", size = 12, angle = 70,
                                   hjust = 0.5, vjust = 0.5),
        axis.text.y = element_text(colour = "grey20", size = 12),
        text = element_text(size = 16))


#result: clear tendency to not allow foreign workers in the shorter educational levels, with few exceptions


##################################################################

#Based on age



#######################################
#######################################

#Question overviews in absolute numbers

#############################

#Overview of the neighbour question

#P5.1
#1981
neighbour_sum_81 <-  summary(neighbour_81) %>% 
  as.data.frame() %>% 
  separate(Freq, c("status", "frequency"), sep = ":")

#Det kunne være fint hvis den kunne sorteres!!

view(neighbour_sum_81)

neighbour_sum_81 %>% 
  filter(status != "NA's       ") %>%
  filter(status != "not checked") %>%
  ggplot(aes(x = Var2, y = frequency, fill = status)) +
  geom_bar(stat = "identity", position = "dodge")



#search: split coloumn by regex in tidyverse - tidyr guide



#P5.2
#1990
neighbour_sum_90 <-  summary(neighbour_90) %>% 
  as.data.frame()

#P5.3
#1999
neighbour_sum_99 <-  summary(neighbour_99) %>% 
  as.data.frame()

#P5.4
#2008
neighbour_sum_08 <-  summary(neighbour_08) %>% 
  as.data.frame()

#P5.5
#2017
neighbour_sum_17 <-  summary(neighbour_17) %>% 
  as.data.frame()


view(neighbour_sum_81)
view(neighbour_sum_90)
view(neighbour_sum_99)
view(neighbour_sum_08)
view(neighbour_sum_17)


#############################

#Overview of the allow to work question

#P5.6
#1990
data_frame_90 %>% 
  count(allow_work_90) %>% 
  ggplot(aes(x = allow_work_90, y = n)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(n, digits = 2)), vjust=1.6, color="white", size=3.5)

#P5.7
#1999
data_frame_99 %>% 
  count(allow_work_99) %>% 
  ggplot(aes(x = allow_work_99, y = n)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(n, digits = 2)), vjust=1.6, color="white", size=3.5)

#P5.8
#2008
data_frame_08 %>% 
  count(allow_work_08) %>% 
  ggplot(aes(x = allow_work_08, y = n)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(n, digits = 2)), vjust=1.6, color="white", size=3.5)

#P5.9
#2017
data_frame_17 %>% 
  count(allow_work_17) %>% 
  ggplot(aes(x = allow_work_17, y = n)) +
  geom_bar(stat = "identity", position = "dodge")+
  geom_text(aes(label=round(n, digits = 2)), vjust=1.6, color="white", size=3.5)


