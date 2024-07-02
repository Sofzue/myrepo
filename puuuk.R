
x <- rnorm(1000, 0, 1)
plot(x)

library(GLMsData)
data("mutagen")

x <- (mutagen$Dose)^1/3
y <- mutagen$Colonies

glm_mod <- glm(y~x, family = poisson(link = "log"))
plot(glm_mod)
