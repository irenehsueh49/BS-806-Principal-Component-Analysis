---
title: "Irene Hsueh's BS 806 Homework 9"
author: "Irene Hsueh"
date: "11/5/2020"
output: html_document
---

### Reading in CSV File 
```{r}
anemia <- read.csv("C:/Irene Hsueh's Documents/MS Applied Biostatistics/BS 806 - Multivariate Analysis for Biostatisticians/Class 9 - Principal Components Analysis/Homework 9/sca.csv")
head(anemia, 10)
```


### Scatter Plots 
```{r}
anemia_visit1 <- anemia[which(anemia$visit==1),]

#Pairwise Scatter Plots
pairs(anemia_visit1[,c("F12SGOT","F17RETIC","F12BLRBN","F12LDH", "AGE")], col="hotpink")

hist(anemia_visit1$F12SGOT, col="red")
hist(anemia_visit1$F17RETIC, col="yellow")
hist(anemia_visit1$F12BLRBN, col="mediumspringgreen")
hist(anemia_visit1$F12LDH, col="deepskyblue")
```


### Unscaled PCA Analysis
```{r}
#Unscaled PCA
unscaled_pca <- prcomp(anemia_visit1[,9:12], scale=FALSE)

#Standard Deviations and Loading Vectors
unscaled_pca

#Scree Plot
summary(unscaled_pca)
plot(unscaled_pca, col="cyan2")

#First 10 Principal Components
unscaled_pca$x[1:10,]

#Variances of Variables
sqrt(apply(anemia[,9:12],2,var))

#Biplot of PCA1 and PCA2
biplot(unscaled_pca)
```


### Scaled PCA Analysis
```{r}
#Scaled PCA
scaled_pca <- prcomp(anemia_visit1[,9:12], scale=TRUE)

#Standard Deviations and Loading Vectors
scaled_pca

#Scree Plot
summary(scaled_pca)
plot(scaled_pca, col="hotpink")

#First 10 Principal Components
scaled_pca$x[1:10,]

#Biplot of PCA1 and PCA2
biplot(scaled_pca)
```


