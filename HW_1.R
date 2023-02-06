---
  title: "Vector_And_Matrix Homework1"
author: "ss4230@scarletmail.rutgers.edu"
date: "02/05/2023"
output: html_document
---
library(readr)
Bumpus_sparrows <- read_csv("C:\Users\Shruti Sontakke\Downloads\Bumpus_sparrows.csv")
Bumpus_sparrows
sparr <- Bumpus_sparrows
sparr

#Separating two matrices as survived and not survived
survived <- subset(sparr, Survivorship == 'S')
survived
notsurvived <- subset(sparr, Survivorship == 'NS')
notsurvived

#Calculating colMeans for survied and not-survived
survived.num <- survived[,-1]
colMeans(survived.num)

notsurvived.num <- notsurvived[,-1]
colMeans(notsurvived.num)

#Creating Covariance matrices 
cov(survived.num)
cov(notsurvived.num)

#Creating correlation matrices
cor(survived.num)
cor(notsurvived.num)

