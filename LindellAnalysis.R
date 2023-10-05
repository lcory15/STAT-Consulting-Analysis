 # Load in Libraries
 library(tidyverse)
 install.packages("gtsummary")
 library(gtsummary)
 
  # Load in the dataset
 Lindell_Revised_2 <- read.csv("~/Downloads/Lindell_Revised_2.csv", header= TRUE)
 View(Lindell_Revised_2)
  
 # Remove excess columns and rows
 Lindell_Revised_2 <- select(Lindell_Revised_2, -X, -X.1, -X.2, -X.3, -X.4, -X.5, -X.6, -X.7, -X.8, -X.9, -X.10, -X.11, -X.12, -X.13, -X.14, -X.15, -X.16, -X.17, -X.18, -X.19, -X.20, -X.21)
 Lindell_Revised_2 <- Lindell_Revised_2[-(43:57),]
 
 # Paired t-test Q1
 t.test(Lindell_Revised_2$PreQ1, Lindell_Revised_2$PostQ1, paired = TRUE, p.adjust.methods = 'bonferroni')
 
 # Paired t-test Q2
 t.test(Lindell_Revised_2$PreQ2, Lindell_Revised_2$PostQ2, paired = TRUE, p.adjust.methods = 'bonferroni')
 
 # Paired t-test Q3
 t.test(Lindell_Revised_2$PreQ3, Lindell_Revised_2$PostQ3, paired = TRUE, p.adjust.methods = 'bonferroni')
 
 # Paired t-test Q4
 t.test(Lindell_Revised_2$PreQ4, Lindell_Revised_2$PostQ4, paired = TRUE, p.adjust.methods = 'bonferroni')
 
 # Paired t-test Q5
 t.test(Lindell_Revised_2$PreQ5, Lindell_Revised_2$PostQ5, paired = TRUE, p.adjust.methods = 'bonferroni')
 
 # Paired t-test Q6
 t.test(Lindell_Revised_2$PreQ6, Lindell_Revised_2$PostQ6, paired = TRUE, p.adjust.methods = 'bonferroni')
 
 # Paired t-test Q7
 t.test(Lindell_Revised_2$PreQ7, Lindell_Revised_2$PostQ7, paired = TRUE, p.adjust.methods = 'bonferroni')
 
 # Getting summary info of demographics
 summarise(Lindell_Revised_2, mean(Age))
 summarise(Lindell_Revised_2, sd(Age))
 table(Lindell_Revised_2$Race)
 table(Lindell_Revised_2$Marital.Status)
 table(Lindell_Revised_2$Gender)
 table(Lindell_Revised_2$Education.Level)
 table(Lindell_Revised_2$Profession.in.Health.Care)
 table(Lindell_Revised_2$Number.of.chronic.medical.conditions)
 table(Lindell_Revised_2$Referral.Source)
 table(Lindell_Revised_2$Perceived.Health.Literacy.Level)
 table(Lindell_Revised_2$Care.venue)
 table(Lindell_Revised_2$Pre_Shared_Visit)
 table(Lindell_Revised_2$Post_Shared_Visit)
 
 
 
 
 