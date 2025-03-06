# Does promiscuity impact lifespan?
library(faraway)
library(ggplot2)
data("fruitfly")
?fruitfly
View(fruitfly)

# Boxplot of lifespan by condition
ggplot(fruitfly, aes(x = activity, y = longevity)) +
  geom_boxplot() +
  labs(title = "Lifespan of Fruit Flies by Activity",
       x = "Activity",
       y = "Lifespan (days)")
# Model
FF.lm =lm(longevity~activity,data=fruitfly)
summary(FF.lm)

# Difference in means??
i_iso = which(fruitfly$activity=="isolated")
i_high = which(fruitfly$activity=="high")
mean(fruitfly$longevity[i_high]) - mean(fruitfly$longevity[i_iso])

# confidence interval??
boot = do(10000)*{
  fly_resample = resample(fruitfly)
  i_iso = which(fly_resample$activity=="isolated")
  i_high = which(fly_resample$activity=="high")
  mean(fly_resample$longevity[i_high]) - mean(fly_resample$longevity[i_iso])
}
hist(boot$result,breaks=100,xlim=c(-50,50))
abline(v=0,col="blue")


r2 = summary(FF.lm)$r.squared; r2

# Compare to shuffled longevity
fruitfly$shuffled.longevity = sample(fruitfly$longevity)
FFrand.lm =lm(shuffled.longevity~activity,data=fruitfly)
r2.rand = summary(FFrand.lm)$r.squared; r2.rand

# Permutation test
nsims = 1000
r2.rand = numeric(nsims)
for (ii in 1:nsims){
  fruitfly$shuffled.longevity = sample(fruitfly$longevity)
  FFrand.lm =lm(shuffled.longevity~activity,data=fruitfly)
  r2.rand[ii] = summary(FFrand.lm)$r.squared
}
hist(r2.rand,xlim = c(0,.4))
abline(v = r2,col=2,lwd=2)
mean(r2<=r2.rand)