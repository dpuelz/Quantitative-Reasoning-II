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