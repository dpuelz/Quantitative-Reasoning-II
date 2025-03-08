## Bootstrapping example

library(mosaic)

creatinine = read.csv("../data/creatinine.csv", header=TRUE)
head(creatinine)

### Bootstrapping the sample mean

# Look at the mean creatinine clearance rate
mean(creatinine$creatclear)

# OK, 125.25 +/- what?
# Bootstrap to get a standard error
boot1 = do(5000)*{
  mean(resample(creatinine)$creatclear)
}

hist(boot1$result)
abline(v=mean(creatinine$creatclear)
,col="red",lwd=4)
sd(boot1$result)

# formula for standard error? se = sqrt(s^2/n)
s = sd(creatinine$creatclear)
n = nrow(creatinine)
se_closedform = sqrt(s^2/n)
se_closedform


# Interpetation: our sample mean is probably off from the true population mean by about 0.95 units

#### Bootstrapping the OLS estimator
plot(creatclear~age, data=creatinine,
     pch=19, col='grey', bty='n',
     ylab="creatinine score", xlab="Age")

lm1 = lm(creatclear~age, data=creatinine)
abline(lm1, lwd=2, col='blue')
coef(lm1)

# Bootstrap
boot1 = do(1000)*lm(creatclear~age, data=resample(creatinine))
head(boot1)

hist(boot1$Intercept)
hist(boot1$age)

# bootstrapped standard errors
sd(boot1$Intercept)
sd(boot1$age)
summary(lm1)

# confidence intervals
confint(boot1)


# second example
beer = read.csv("../data/beer.csv")
fit = lm(nbeer~height,data=beer)

boot1 = do(1000)*lm(creatclear~age, data=resample(creatinine))
head(boot1)

hist(boot1$Intercept)
hist(boot1$age)






# Going back to power demand
# What about an additional variable?
KHOU_squared = load_combined$KHOU^2
load_combined$KHOU_squared = KHOU_squared
numboot = 100
lm2 = do(numboot)*(lm(COAST ~ KHOU + KHOU_squared, data=resample(load_combined)))

plot(load_combined$KHOU,load_combined$COAST,col=rgb(0,0,0,alpha=0.1),pch=19,cex=0.8,xlab="temperature (F)",ylab="power demand",ylim=c(6000,20000),xlim=c(20,106))

x = load_combined$KHOU
xmin = floor(min(x))
xmax = floor(max(x))
xnew = seq(xmin,xmax,length.out=500)

quadfit = array(NA,c(numboot,length(xnew)))
for(ii in 1:numboot){
  quadfit[ii,] = lm2$Intercept[ii] + lm2$KHOU[ii]*xnew +   lm2$KHOU_squared[ii]*xnew^2
  lines(xnew,quadfit[ii,],col=rgb(1,0,0,alpha=0.3),lwd=1)
}

# smaller sample
load_combined_small = sample(load_combined,20)
KHOU_squared = load_combined_small$KHOU^2
load_combined_small$KHOU_squared = KHOU_squared
numboot = 200
lm2 = do(numboot)*(lm(COAST ~ KHOU + KHOU_squared, data=resample(load_combined_small)))

plot(load_combined_small$KHOU,load_combined_small$COAST,col=rgb(0,0,0,alpha=0.1),pch=19,cex=0.8,xlab="temperature (F)",ylab="power demand",ylim=c(6000,20000),xlim=c(20,106))
x = load_combined$KHOU
xmin = floor(min(x))
xmax = floor(max(x))
xnew = seq(xmin,xmax,length.out=500)
quadfit = array(NA,c(numboot,length(xnew)))
for(ii in 1:numboot){
  quadfit[ii,] = lm2$Intercept[ii] + lm2$KHOU[ii]*xnew +   lm2$KHOU_squared[ii]*xnew^2
  lines(xnew,quadfit[ii,],col=rgb(1,0,0,alpha=0.3),lwd=1)
}



