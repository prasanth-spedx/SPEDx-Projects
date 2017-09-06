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

#Query to pull IEP data from Albany district in the zip file

AlbanyIEP <- read.table(unz("Albany.zip", "AlbanyIEP.txt"), nrows=10, header=T, sep="|")
