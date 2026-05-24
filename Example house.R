load("BodyFat.Rdata")
###6.4.3 # book

install.packages("caret")
require(caret)
data(tecator) # loads 'absorp' and 'endpoints'
pairs(endpoints, labels = c("water", "fat", "protein"))

install.packages("corrplot")

library (corrplot)
cor.cr <- cor(TrainBodyFat1) # delete column1 , and 8 to 11
corrplot(cor.cr)

library(leaps)  # u can do forward , backward , multi regression 
bodyfat.bw <- regsubsets(bodyfat~., data = TrainBodyFat1,method = "backward") 
bodyfat.s <- summary(bodyfat.bw) 
names(bodyfat.s)

str(bodyfat.bw)
names(bodyfat.bw) # selectb 28 variables

plot(bodyfat.s$adjr2, xlab = "No. of Variable", ylab = "Adjusted R squears", pch = 16, cex.lab = 1.5)


# Choose fat (second column) 
Fat <- endpoints[1, 2]

# Create data frame with response and explanatory variables
Tecator <- data.frame(Fat, absorp)

# Add wavelengths as column/variable names
WL <- seq(850, 1048, 2) # Not clear whether 850 or 852 is starting point
names(Tecator) <- c("Fat", WL)


# Plot a couple of spectra near/around each five-number percentiles
tmp <- Tecator
tmp <- tmp[order(tmp$Fat),]
tmp <- tmp[c(1:2, 53:54, 108:109, 160:161, 212:213), -1]
LCols <- rainbow(5, alpha = 0.5)
matplot(WL, t(tmp), type = "l", lwd = 2, col = rep(LCols, rep(2, 5)), lty = 1,
          +         xlab = "wavelength", ylab = "absorbance")
