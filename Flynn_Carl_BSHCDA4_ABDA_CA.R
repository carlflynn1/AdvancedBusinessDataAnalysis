#Carl Flynn
#X17347726

install.packages("dplyr")
library(dplyr)

#Readingdata
census <- read.csv("C:/Users/CarlF/Downloads/SAPS2016_SA2017.csv")

small_area <- read.csv("C:/Users/CarlF/Downloads/Small_Areas_Generalised_100m_-_OSi_National_Statistical_Boundaries_-_2015.csv")

#JoiningData
census_small_area <- left_join(census, small_area, by = c("GUID"="GUID"))

#Writing to a new file
write.table(census_small_area, file = "census_small_area.csv", row.names = F, sep=",")

setwd("C:/Users/CarlF/OneDrive/Desktop/Semester 2/ADBA")


#Kruskal Wallis Test 1
MaleSkillsKW <- read.csv("MaleSkillsKW.csv")

boxplot(MaleSkillsKW)
hist(MaleSkillsKW$ï..SM)
hist(MaleSkillsKW$SSM)
hist(MaleSkillsKW$USM)

MaleSkillsKW.kw = kruskal.test(MaleSkillsKW)
MaleSkillsKW.kw

#Kruskal Wallis Test 2
EducationKruskal <- read.csv("EducationKruskal.csv")

boxplot(EducationKruskal)
hist(EducationKruskal$ï..NFT)
hist(EducationKruskal$PT)
hist(EducationKruskal$LST)
hist(EducationKruskal$UST)

EducationKruskal.kw = kruskal.test(EducationKruskal)
EducationKruskal.kw

#MannWhitney Test
OTHGEU <- read.csv("OTHGEU.csv")

boxplot(OTHGEU)

wilcox.test(OTHGEU$ï..OTHGEUM, OTHGEU$OTHGEUF)









