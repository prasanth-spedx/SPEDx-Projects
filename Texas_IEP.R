# Texas IEP Analysis project

setwd("C:/Users/prasa/Google Drive/Projects/Texas/Data") #Set the working directory
list.files("C:/Users/prasa/Google Drive/Projects/Texas/Data")
getwd()

library(readxl)

?read_excel

# Reading excel files for the Texas Project

IEP <- read_excel("IEP.xlsx")
Goals <- read_excel("Goals.xlsx")
PP <- read_excel("Potential Partners.xlsx")



