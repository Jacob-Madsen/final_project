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


#################################################################################################################

#Subsetting question: All in all, do you think people can be trusted or do you think you can't be too careful when you are dealing with people


#1981
#V61 = Can people be trusted question
trust_ppl_81 <- data_81$V61
trust_ppl_81[is.na(trust_ppl_81)] <- "undetermined"
trust_ppl_81 <-  factor(trust_ppl_81)
levels(trust_ppl_81) <- c("most can be trusted", "can't be too careful","undetermined")

#1990
#V134 = Can people be trusted question
trust_ppl_90 <- data_90$V134
trust_ppl_90[is.na(trust_ppl_90)] <- "undetermined"
trust_ppl_90 <-  factor(trust_ppl_90)
levels(trust_ppl_90) <- c("most can be trusted", "can't be too careful","undetermined", "undetermined")

#1999
#V119 = Can people be trusted question
trust_ppl_99 <- data_99$V119
trust_ppl_99[is.na(trust_ppl_99)] <- "undetermined"
trust_ppl_99 <-  factor(trust_ppl_99)
levels(trust_ppl_99) <- c("most can be trusted", "can't be too careful","undetermined", "undetermined")

#2008
#V61 = Can people be trusted question
trust_ppl_08 <- data_08$V61
trust_ppl_08[is.na(trust_ppl_08)] <- "undetermined"
trust_ppl_08 <-  factor(trust_ppl_08)
levels(trust_ppl_08) <- c("most can be trusted", "can't be too careful","undetermined", "undetermined")

#2017
#V61 = Can people be trusted question
trust_ppl_17 <- data_17$V37
trust_ppl_17[is.na(trust_ppl_17)] <- "undetermined"
trust_ppl_17 <-  factor(trust_ppl_17)
levels(trust_ppl_17) <- c("most can be trusted", "can't be too careful","undetermined", "undetermined")



################################################################################################################


#Subsetting question: How proud are you of being danish?


#1981
#V313 = proudness question
proud_81 <- data_81$V313
proud_81[is.na(proud_81)] <- "undetermined"
proud_81 <-  factor(proud_81)
levels(proud_81) <- c("very proud", "quite proud","not very proud", "not at all proud", "NA")

#1990
#V359 = proudness question
proud_90 <- data_90$V359
proud_90[is.na(proud_90)] <- "undetermined"
proud_90 <-  factor(proud_90)
levels(proud_90) <- c("very proud","quite proud","not very proud","not at all proud","not danish","undetermined","undetermined")

#1999
#V324 = proudness question
proud_99 <- data_99$V324
proud_99[is.na(proud_99)] <- "undetermined"
proud_99 <-  factor(proud_99)
levels(proud_99) <- c("very proud","quite proud","not very proud","not at all proud","undetermined","undetermined")

#2008
#V258 = proudness question
proud_08 <- data_08$V258
proud_08[is.na(proud_08)] <- "undetermined"
proud_08 <-  factor(proud_08)
levels(proud_08) <- c("very proud","quite proud","not very proud","not at all proud","undetermined","undetermined")

#2017
#V178 = proudness question
proud_17 <- data_17$V178
proud_17[is.na(proud_17)] <- "undetermined"
proud_17 <-  factor(proud_17)
levels(proud_17) <- c("very proud","quite proud","not very proud","not at all proud","undetermined","undetermined")


################################################################################################################


#Subsetting question: How much control do you think you have over your own life?


#1981
#V64 = control question (result: factor)
control_81 <- data_81$V64
control_81[is.na(control_81)] <- "undetermined"
control_81 <-  factor(control_81,levels=c("1","2","3","4","5","6","7","8","9","10","undetermined"))
levels(control_81) <- c("1_none_at_all","2","3","4","5","6","7","8","9","10_a_great_deal","undetermined")

#1990
#V135 = control question (result: factor)
control_90 <- data_90$V135
control_90[is.na(control_90)] <- "undetermined"
control_90 <-  factor(control_90,levels=c("1","2","3","4","5","6","7","8","9","10","undetermined"))
levels(control_90) <- c("1_none_at_all","2","3","4","5","6","7","8","9","10_a_great_deal","undetermined")

#1999
#V120 = control question (result: factor)
control_99 <- data_99$V120
control_99[is.na(control_99)] <- "undetermined"
control_99 <-  factor(control_99,levels=c("1","2","3","4","5","6","7","8","9","10","undetermined"))
levels(control_99) <- c("1_none_at_all","2","3","4","5","6","7","8","9","10_a_great_deal","undetermined")

#2008
#V64 = control question (result: factor)
control_08 <- data_08$V64
control_08[is.na(control_08)] <- "undetermined"
control_08 <-  factor(control_08,levels=c("1","2","3","4","5","6","7","8","9","10","undetermined"))
levels(control_08) <- c("1_none_at_all","2","3","4","5","6","7","8","9","10_a_great_deal","undetermined")

#2017
#V44 = control question (result: factor)
control_17 <- data_17$V44
control_17[is.na(control_17)] <- "undetermined"
control_17 <-  factor(control_17,levels=c("1","2","3","4","5","6","7","8","9","10","undetermined"))
levels(control_17) <- c("1_none_at_all","2","3","4","5","6","7","8","9","10_a_great_deal","undetermined")



################################################################################################################


#Subsetting question: Who would you like as neighbour


#1981
#V39-V49 = Neighbour question
neighbour_81 <- data_81[,37:47] %>% 
  rename(avoid_criminals = V39,
         avoid_other_race = V40,
         avoid_students = V41,
         avoid_LW_extremists = V42,
         avoid_unm_mothers = V43,
         avoid_heavy_drinkers = V44,
         avoid_RW_extremists = V45,
         avoid_large_families = V46,
         avoid_emotionally_unst = V47,
         avoid_minority_sects = V48,
         avoid_foreign_workers = V49) %>% 
  mutate_all(as.factor) %>% 
  mutate(avoid_criminals = recode(avoid_criminals, "0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_other_race = recode(avoid_other_race,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_students = recode(avoid_students,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_LW_extremists = recode(avoid_LW_extremists,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_unm_mothers = recode(avoid_unm_mothers,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_heavy_drinkers = recode(avoid_heavy_drinkers,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_RW_extremists = recode(avoid_RW_extremists,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_large_families = recode(avoid_RW_extremists,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_emotionally_unst = recode(avoid_emotionally_unst,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_minority_sects = recode(avoid_minority_sects,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_foreign_workers = recode(avoid_foreign_workers,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"))

#1990
#V108-V122
neighbour_90 <- data_90[,97:111] %>% 
  rename(avoid_criminal = V108,
         avoid_other_race = V109,
         avoid_LW = V110,
         avoid_alchoholics = V111,
         avoid_RW = V112,
         avoid_families = V113,
         avoid_neurotic = V114,
         avoid_muslims = V115,
         avoid_foreign_workers = V116,
         avoid_ppl_w_aids = V117,
         avoid_drug_addicts = V118,
         avoid_homosexuals = V119,
         avoid_jews = V120,
         avoid_hindu = V121,
         avoid_dont_care = V122) %>% 
  mutate_all(as.factor) %>% 
  mutate(avoid_criminal = recode(avoid_criminal,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_other_race = recode(avoid_other_race,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_LW = recode(avoid_LW,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_alchoholics = recode(avoid_alchoholics,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_RW = recode(avoid_RW, "1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_families = recode(avoid_families, "1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_neurotic = recode(avoid_neurotic,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_muslims = recode(avoid_muslims,"1" = "checked", "2" = "not checked","9" = "NA"),
         avoid_foreign_workers = recode(avoid_foreign_workers,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_ppl_w_aids = recode(avoid_ppl_w_aids,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_drug_addicts = recode(avoid_drug_addicts,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_homosexuals = recode(avoid_homosexuals,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_jews = recode(avoid_jews,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_hindu = recode(avoid_hindu,"1" = "checked", "2" = "not checked", "9" = "NA"),
         avoid_dont_care = recode(avoid_dont_care,"1" = "checked", "2" = "not checked", "9" = "NA"))

#1999
#V104-V118
neighbour_99 <- data_99[,89:103] %>% 
  rename(avoid_criminal = V104,
         avoid_other_race = V105,
         avoid_LW = V106,
         avoid_alchoholics = V107,
         avoid_RW = V108,
         avoid_families = V109,
         avoid_mentally_ill = V110,
         avoid_muslims = V111,
         avoid_immigrants = V112,
         avoid_ppl_w_aids = V113,
         avoid_drug_addicts = V114,
         avoid_homosexuals = V115,
         avoid_jews = V116,
         avoid_gypsies = V117,
         avoid_dont_care = V118) %>% 
  mutate_all(as.factor) %>% 
  mutate(avoid_criminal = recode(avoid_criminal,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_other_race = recode(avoid_other_race,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_LW = recode(avoid_LW,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_alchoholics = recode(avoid_alchoholics,"0" = "not checked", "8" = "dont know", "1" = "checked", "9" = "NA"),
         avoid_RW = recode(avoid_RW,"0" = "not checked", "1" = "checked", "8" = "dont know","9" = "NA"),
         avoid_families = recode(avoid_families,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_mentally_ill = recode(avoid_mentally_ill,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_muslims = recode(avoid_muslims,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_immigrants = recode(avoid_immigrants,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_ppl_w_aids = recode(avoid_ppl_w_aids,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_drug_addicts = recode(avoid_drug_addicts,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_homosexuals = recode(avoid_homosexuals,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_jews = recode(avoid_jews,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_gypsies = recode(avoid_gypsies,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_dont_care = recode(avoid_dont_care,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"))

#2008
#V47-V60
neighbour_08 <- data_08[,44:57] %>% 
  rename(avoid_criminal = V47,
         avoid_other_race = V48,
         avoid_LW = V49,
         avoid_alchoholics = V50,
         avoid_RW = V51,
         avoid_families = V52,
         avoid_neurotic = V53,
         avoid_muslims = V54,
         avoid_immigrants = V55,
         avoid_ppl_w_aids = V56,
         avoid_drug_addicts = V57,
         avoid_homosexuals = V58,
         avoid_jews = V59,
         avoid_gypsies = V60) %>% 
  mutate_all(as.factor) %>% 
  mutate(avoid_criminal = recode(avoid_criminal,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_other_race = recode(avoid_other_race,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_LW = recode(avoid_LW,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_alchoholics = recode(avoid_alchoholics,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_RW = recode(avoid_RW,"0" = "not checked", "1" = "checked", "8" = "dont know","9" = "NA"),
         avoid_families = recode(avoid_families,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_neurotic = recode(avoid_neurotic,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_muslims = recode(avoid_muslims,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_immigrants = recode(avoid_immigrants,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_ppl_w_aids = recode(avoid_ppl_w_aids,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_drug_addicts = recode(avoid_drug_addicts,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_homosexuals = recode(avoid_homosexuals,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_jews = recode(avoid_jews,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"),
         avoid_gypsies = recode(avoid_gypsies,"0" = "not checked", "1" = "checked","8" = "dont know", "9" = "NA"))

#2017
#V27 - V36
neighbour_17 <- data_17[,25:34] %>% 
  rename(avoid_other_race = V27,
         avoid_alcholics = V28,
         avoid_immigrants_foreign_workers = V29,
         avoid_drug_addicts = V30,
         avoid_homosexuals = V31,
         avoid_christians = V32,
         avoid_muslims = V33,
         avoid_jews = V34,
         avoid_roma = V35,
         avoid_none = V36) %>% 
  mutate_all(as.factor) %>% 
  mutate(avoid_other_race = recode(avoid_other_race,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_alcholics = recode(avoid_other_race,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_immigrants_foreign_workers = recode(avoid_immigrants_foreign_workers,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_drug_addicts = recode(avoid_drug_addicts,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_homosexuals = recode(avoid_homosexuals,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_christians = recode(avoid_christians,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_muslims = recode(avoid_muslims,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_jews = recode(avoid_jews,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_roma = recode(avoid_roma,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"),
         avoid_none = recode(avoid_none,"0" = "not checked", "1" = "checked", "8" = "dont know", "9" = "NA"))
         


#####################################################################################

#social-ecoenomic class

#1981
#V337
class_81 <- data_81$V337
class_81 <-  factor(class_81)
levels(class_81) <- c("AB", "C1","C2", "DE")


#1990
#NA

#1999
#NA

#2008
#NA

#2017
#V337
class_17 <- data_17$V298
class_17 <-  factor(class_17)
levels(class_17) <- c("Underclass", "Working Class","Lower mdl class", "Higher mdl class","Upper class","dont know","NA")


#####################################################################################

#geographical identification

#first choice

#1981
#V301
geograph_01_81 <- as.factor(data_81$V301)
levels(geograph_01_81) <- c("own town", "local region", "own country", "Europe", "the whole world", "8" = NA)

#1990
#357
geograph_01_90 <- as.factor(data_90$V357)
levels(geograph_01_90) <- c("1" = "own town", "2" = "local region", "3" = "own country", "4" = "Europe", "5" = "the whole world", "8" = "dont know", "9" = NA)

#1999
#317
geograph_01_99 <- as.factor(data_99$V317)
levels(geograph_01_99) <- c("1" = "own town", "2" = "local region", "3" = "own country", "4" = "Europe", "5" = "the whole world", "8" = "dont know", "9" = NA)

#2008
#255
geograph_01_08 <- as.factor(data_08$V255)
levels(geograph_01_08) <- c("1" = "own town", "2" = "local region", "3" = "own country", "4" = "Europe", "5" = "the whole world", "8" = "dont know", "9" = NA)

#2017
#NA

#second choice
#1981
#V302
geograph_02_81 <- as.factor(data_81$V302)
levels(geograph_02_81) <- c("1" = "own town", "2" = "local region", "3" = "own country", "4" = "Europe", "5" = "the whole world", "8" = NA)

#1990
#358
geograph_02_90 <- as.factor(data_90$V358)
levels(geograph_02_90) <- c("1" = "own town", "2" = "local region", "3" = "own country", "4" = "Europe", "5" = "the whole world", "8" = "dont know", "9" = NA)

#1999
#319
geograph_02_99 <- as.factor(data_99$V319)
levels(geograph_02_99) <- c("1" = "own town", "2" = "local region", "3" = "own country", "4" = "Europe", "5" = "the whole world", "8" = "dont know", "9" = NA)

#2008
#256
geograph_02_08 <- as.factor(data_08$V256)
levels(geograph_02_08) <- c("1" = "own town", "2" = "local region", "3" = "own country", "4" = "Europe", "5" = "the whole world", "8" = "dont know", "9" = NA)

#2017
#NA

#####################################################################################

#year of birth


#1981
#V334
year_of_birth_81 <- data_81$V334

#1990
#V389
year_of_birth_90 <- data_90$V389

#1999
#V372
year_of_birth_99 <- data_99$V372

#2008
#V445
year_of_birth_08 <- as.factor(data_08$V445)
levels(year_of_birth_08) <- c("1" = "18-29 år", "2" = "30-39 år", "3" = "40-49 år", "4" = "50-59 år", "5" = "60-69 år", "6" = "70 år +")

#2017
#V318
year_of_birth_17 <- as.factor(data_17$V318)
levels(year_of_birth_17) <- c("1" = "18-26 år", "2" = "27-35 år", "3" = "36-44 år", "4" = "45-53 år", "5" = "54-62 år", "6" = "63-71 år", "7" = "72 år +", "9" = "NA")

#####################################################################################

#sexual orientation

#1981
#V333
sex_81 <- as.factor(data_81$V333)
levels(sex_81) <- c("male", "female (housewife)","female (working)")

#1990
#V390
sex_90 <- as.factor(data_90$V390)
levels(sex_90) <- c("male", "female", "9" = NA)

#1999
#V372
sex_99 <- as.factor(data_99$V8)
levels(sex_99) <- c("male", "female")

#2008
#V310
sex_08 <- as.factor(data_08$V310)
levels(sex_08) <- c("male", "female")

#2017
#V315
sex_17 <- as.factor(data_17$V315)
levels(sex_17) <- c("male", "female")




#####################################################################################

#occupation

#1981
#V327
occupation_81 <- as.factor(data_81$V327)
levels(occupation_81) <- c("large buisnessowner", 
                           "small buisnessowner",
                           "prof. worker", 
                           "mdl. lvl. non-manual", 
                           "jun. lvl. non-manual", 
                           "supervisor manual", 
                           "skilled manual", 
                           "semi-skilled manual", 
                           "unskilled manual", 
                           "farmers", 
                           "agricultural workers", 
                           "armed forces", 
                           NA)

#1990
#V24
occupation_90 <- as.factor(data_90$V24)
levels(occupation_90) <- c("1" = "Farmer",
                           "2" = "self-supporting akademic",
                           "3" = "wife" , 
                           "4" = "large buisnessowner", 
                           "5" = "small buisnessowner", 
                           "6" = "skilled", 
                           "7" = "specialworker", 
                           "8" = "non-skilled", 
                           "9" = "leading functionary", 
                           "10" = "functionary with education",
                           "11" = "functionary without education", 
                           "12" = "agricultural workers", 
                           "13" = "armed forces", 
                           "14" = "trainee - craftmanship", 
                           "15" = "teinee - shop or office", 
                           NA, 
                           NA)


#2017
#NA - too comprehensive list


#####################################################################################

#educational level

#1981
#V318
education_age_81 <- as.factor(data_81$V318)
levels(education_age_81) <- c("12 or under", 
                          "13",
                          "14", 
                          "15", 
                          "16", 
                          "17", 
                          "18", 
                          "19", 
                          "20",
                          "21 or over")

#1990
#V11 + V9
education_90 <- as.factor(data_90$V11)
levels(education_90) <- c("special-worker-course", 
                          "skilled education",
                          "short buisness or computer science", 
                          "buisness or banking", 
                          "technical - 2-3 years", 
                          "FE technical", 
                          "social- and health - 1 year", 
                          "social- and health - 3-4 years", 
                          "education - 3-4 years", 
                          "master from university", 
                          "military education", 
                          "other",
                          NA,
                          NA)

school_90 <- as.factor(data_90$V9)
levels(school_90) <- c("still in shool",
                      "7th grade or less",
                      "8th grade",
                      "9th grade",
                      "technical examn",
                      "10th grade",
                      "expanded technical examn",
                      "1st real",
                      "2nd real",
                      "3rd real no examn",
                      "realcourse no examn",
                      "middleschool examn",
                      "real- girl- and preliminary examn",
                      "gymnasium or simmilar no examn",
                      "student or HF",
                      "other")

#1999
#V24 + V22
education_99 <- as.factor(data_99$V24)
levels(education_99) <- c("special-worker-course", 
                          "skilled education",
                          "short buisness or computer science", 
                          "buisness or banking", 
                          "technical - 2-3 years", 
                          "FE technical", 
                          "social- and health - 1 year", 
                          "social- and health - 3-4 years", 
                          "education - 3-4 years", 
                          "master from university", 
                          "military education", 
                          "other",
                          NA,
                          NA)

school_99 <- as.factor(data_99$V22)
levels(school_90) <- c("still in shool",
                      "7th grade or less",
                      "8th grade",
                      "9th grade",
                      "technical examn",
                      "10th grade",
                      "expanded technical examn",
                      "1st real",
                      "2nd real",
                      "3rd real no examn",
                      "realcourse no examn",
                      "middleschool examn",
                      "real- girl- and preliminary examn",
                      "gymnasium or simmilar no examn",
                      "student or HF",
                      "other",
                      NA,
                      NA)

#1999
#V366 + V364
education_08 <- as.factor(data_08$V366)
levels(education_08) <- c("special-worker-course", 
                          "skilled education",
                          "short buisness or computer science", 
                          "buisness or banking", 
                          "technical - 2-3 years", 
                          "FE technical", 
                          "social- and health - 1 year", 
                          "social- and health - 3-4 years", 
                          "education - 3-4 years", 
                          "master from university", 
                          "military education", 
                          "other",
                          NA,
                          NA,
                          NA)

school_08 <- as.factor(data_08$V364)
levels(school_08) <- c("still in shool",
                      "7th grade or less",
                      "8th grade",
                      "9th grade",
                      "technical examn",
                      "10th grade",
                      "expanded technical examn",
                      "1st real",
                      "2nd real",
                      "3rd real no examn",
                      "realcourse no examn",
                      "middleschool examn",
                      "real- girl- and preliminary examn",
                      "gymnasium or simmilar no examn",
                      "student or HF",
                      "other",
                      NA,
                      NA)

#2017
#V252
education_17 <- as.factor(data_17$V252)
levels(education_17) <- c("no school to 5th grade", 
                           "6th to 8th grade",
                           "9th to 10th grade", 
                           "gymnasium or similar", 
                           "short vocational - less than 1-2 years", 
                           "skilled education", 
                           "short FE - 2-3 years", 
                           "mediumlong FE - 3-4 years", 
                           "universitybachelor", 
                           "long FE 5-6 years", 
                           "licentiate", 
                           "research-education", 
                           "other",
                          NA,
                          NA)



#####################################################################################

#are foreigners allowed to work here

#1981
#VNA

#1990 (question: are immigrants allowed to work if there are not enough jobs for Danes)
#V172
allow_work_90 <- as.factor(data_90$V172)
levels(allow_work_90) <- c("not allowed", "allowed", "either or", "dont know")

#1999
#V328
allow_work_99 <- as.factor(data_99$V328)
levels(allow_work_99) <- c("everybody allowed", "allow as long as there is jobs for Danes", 
                           "limmit amount of foreigners in the country", 
                           "forbid foreigners to enter the country", 
                           "dont know", 
                           NA)

#2008
#V268
allow_work_08 <- as.factor(data_08$V268)
levels(allow_work_08) <- c("everybody allowed", 
                            "allow as long as there is jobs for Danes", 
                            "limmit amount of foreigners in the country", 
                            "forbid foreigners to enter the country", 
                            "dont know", 
                            NA)

#2017
#V88 (if few jobs - should Danes be prioritized over immigrants?)
allow_work_17 <- as.factor(data_17$V88)
levels(allow_work_17) <- c("agree completely", 
                           "agree", 
                           "either or", 
                           "dont agree", 
                           "completely dont agree", 
                           "dont know", 
                           NA)

#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

#Merging new computable dataframes for each year

#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


#1981
data_frame_81 <- data.frame(trust_ppl_81,proud_81,class_81,geograph_01_81, geograph_02_81,sex_81, year_of_birth_81, occupation_81, education_age_81,neighbour_81)

#1990
data_frame_90 <- data.frame(trust_ppl_90,proud_90,geograph_01_90, geograph_02_90,sex_90, year_of_birth_90, occupation_90, education_90, school_90, allow_work_90, neighbour_90) 

#1999
data_frame_99 <- data.frame(trust_ppl_99,proud_99, geograph_01_99, geograph_02_99, sex_99, year_of_birth_99, education_99, school_99, allow_work_99, neighbour_99) 

#2008
data_frame_08 <- data.frame(trust_ppl_08,proud_08,geograph_01_08, geograph_02_08, sex_08 ,year_of_birth_08, education_08, school_08, allow_work_08, neighbour_08) 

#2017
data_frame_17 <- data.frame(trust_ppl_17,proud_17,class_17,year_of_birth_17, sex_17, education_17, allow_work_17, neighbour_17)
