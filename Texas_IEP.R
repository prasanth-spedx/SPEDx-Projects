# Texas IEP Analysis project

ls()
setwd("C:/Users/prasa/Google Drive/Projects/Texas/Data") #Set the working directory
list.files("C:/Users/prasa/Documents/GitHub/texas_iepanalysis/SPEDx-Projects")
getwd()

rm(list=ls())

#Load packages
library(readxl)
library(ggplot2)
library(tidyr)

?read_excel

# Reading excel files for the Texas Project

IEP <- read_excel("IEP.xlsx")
Goals <- read_excel("Goals.xlsx")
PP <- read_excel("Potential Partners.xlsx",2)

colnames(IEP)

# QUery to subset IEP data for test student '636926167' with select criteria

IEP1 <- subset(IEP, StudentId==636926167)
nrow(IEP1)
IEP2 <- subset(IEP, FormTypeId==9 & StudentId==636926167 & ScheduleType4=="Current")
nrow(IEP2)


# Test Student 636926167

IEP1_sub <- IEP1[1:5,1:10]
IEP1_sub

IEP_sub <- IEP[1:3,1:10]
IEP_sub
