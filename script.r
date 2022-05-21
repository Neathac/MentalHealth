# Libraries

library(ggplot2)

#################################
# Reading the datasets
#################################

mental_health <- read.csv("mentalHealth.csv")
alcohol_use <- read.csv("alcoholUse.csv")
cocaine_use <- read.csv("cocaineUse.csv")
drug_use <- read.csv("drugUse.csv")
heroin_use <- read.csv("heroinUse.csv")
weed_use <- read.csv("marijuanaUse.csv")
colnames(mental_health)
colnames(alcohol_use)
colnames(cocaine_use)
colnames(drug_use)
colnames(heroin_use)
colnames(weed_use)

##############################################
# Initial plotting and probability exercises
##############################################

Conneticut <- weed_use[ weed_use$Variable == "Marijuana Use" & weed_use$Region == "Connecticut", ]
Conneticut_first_use <- Conneticut[Conneticut$Marijuana.Use == "First Use of Marijuana"]
yearly_values <- table(Conneticut$Year[Conneticut$Marijuana.Use == "First Use of Marijuana"], Conneticut$Value[Conneticut$Marijuana.Use == "First Use of Marijuana"])

