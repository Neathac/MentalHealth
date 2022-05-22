# Libraries

library(ggplot2)
library(reshape2)
library(gplots)
library(corrplot)

#################################
# Reading the dataset
#################################

drug_use <- read.csv("NSDUH Workforce Adults.csv")
colnames(drug_use)

#####################################################
# Likelyhood of drug use for Marijuana users
#####################################################

drug_users <- drug_use[drug_use$anydrugever_nomj == TRUE,]
drug_non_users <- drug_use[drug_use$anydrugever_nomj == FALSE,]

drug_marij_users <- drug_users[drug_users$marij_ever == TRUE,]
drug_marij_non_users <- drug_users[drug_users$marij_ever == FALSE,]

non_drug_marij_users <- drug_non_users[drug_non_users$marij_ever == TRUE,]
non_drug_marij_non_users <- drug_non_users[drug_non_users$marij_ever == FALSE,]

print(nrow(non_drug_marij_non_users)/nrow(drug_use))

options(scipen = 100000000)

ggplot(data = drug_use, aes(x = factor(marij_ever))) + geom_bar() +
  scale_y_continuous(limits = c(0,nrow(drug_use[drug_use$marij_ever == TRUE,])), expand = c(0,0)) +
  labs(y= "", x = "Did use Marijuana")

#####################################################
# Popularity of drug types among income groups
#####################################################

column <- c(nrow(drug_use[drug_use$marij_ever == TRUE,]),
nrow(drug_use[drug_use$cocaine_ever == TRUE,]),
nrow(drug_use[drug_use$crack_ever == TRUE,]),
nrow(drug_use[drug_use$heroin_ever == TRUE,]),
nrow(drug_use[drug_use$hallucinogen_ever == TRUE,]),
nrow(drug_use[drug_use$inhalant_ever == TRUE,]),
nrow(drug_use[drug_use$meth_ever == TRUE,]),
nrow(drug_use[drug_use$painrelieve_ever == TRUE,]),
nrow(drug_use[drug_use$tranq_ever == TRUE,]),
nrow(drug_use[drug_use$stimulant_ever == TRUE,]),
nrow(drug_use[drug_use$sedative_ever == TRUE,]))

barplot(column, names=c("marij_ever", "cocaine_ever", "crack_ever", "heroin_ever", "hallucinogen_ever"
                        , "inhalant_ever", "meth_ever", "painrelieve_ever", "tranq_ever",
                        "stimulant_ever", "sedative_ever"))

column <- c(nrow(drug_use[drug_use$PersonalIncome == 1,]),
            nrow(drug_use[drug_use$PersonalIncome == 2,]),
            nrow(drug_use[drug_use$PersonalIncome == 3,]),
            nrow(drug_use[drug_use$PersonalIncome == 4,]),
            nrow(drug_use[drug_use$PersonalIncome == 5,]),
            nrow(drug_use[drug_use$PersonalIncome == 6,]),
            nrow(drug_use[drug_use$PersonalIncome == 7,]))

barplot(column, names=c("10 000$", "20 000$", "30 000$", "40 000$", "50 000$"
                        , "<75 000$", ">75 000$"))

# Chi-squared test
cocaine_table <- table(drug_use$cocaine_ever, drug_use$PersonalIncome)
balloonplot(t(cocaine_table), main ="Dependence of cocaine on income", xlab ="", ylab="",
            label = FALSE, show.margins = FALSE)

pervitin_table <- table(drug_use$meth_ever, drug_use$PersonalIncome)
balloonplot(t(pervitin_table), main ="Dependence of pervitin on income", xlab ="", ylab="",
            label = FALSE, show.margins = FALSE)

cocaine_chisq <- chisq.test(cocaine_table)
pervitin_chisq <- chisq.test(pervitin_table)

cocaine_chisq
pervitin_chisq

round(cocaine_chisq$expected,2)
round(pervitin_chisq$expected,2)

round(cocaine_chisq$residuals, 3)
round(pervitin_chisq$residuals, 3)

corrplot(cocaine_chisq$residuals, is.cor = FALSE)
corrplot(cocaine_chisq$residuals, is.cor = FALSE)