path<-"C:\\\\Users\\qsere\\Downloads\\"
gwas.catalog<-read.csv(paste(path,"gwas-catalog-v1.0.3.1-studies-r2025-01-30.tsv", sep = ""), sep = "\t", header = T)
dim(gwas.catalog)# 134602     25
gwas.catalog[1:2,]
length(unique(gwas.catalog$PUBMED.ID)) #7139
study1<-unique(gwas.catalog$PUBMED.ID)

library("xlsx")
grasp<-read.xlsx(paste(path,"GRASP2_List_Of_Studies.xlsx", sep = ""), sheetName = "FinalFinal", header = TRUE, startRow=1) 


install.packages("tidyverse")
library("readxl")
file<-paste(path,"GRASP2_List_Of_Studies.xlsx", sep = "")
excel_sheets(file)
grasp<-read_xlsx(file, sheet = "FinalFinal", skip = 0, n_max = 2072) 
length(unique(grasp$PubmedID)) #2072
study2<-unique(grasp$PubmedID)
length(intersect(study1, study2)) #1726
length(unique(c(study1, study2))) #7485
length(setdiff(study1, study2)) #5413
length(setdiff(study2, study1)) #346   

1726+5413+346
346/7485 #0.04622578
