library(tidyverse)
library(ggplot2)
library(bbmle)
library(mizer)
library(dplyr)
library(modeest)
library(tswge)

library(tidyverse, ggplot2, bbmle)
library(modeest)
library(tswge)

set.seed(184)

interest<- c(0.1,0.3,0.4,0.5,0.6,0.9,2.8,4.5,4.7,5.2)
interestingDF <- tibble(val = interest)
# zeroesN <- for(i in 1:length(interest))
#   zeroesN[i] = 0


inteTwoD <- interestingDF %>%
  mutate(height = 0)

ggplot(interestingDF, aes(val)) +
  geom_histogram()

ggplot(data = interestingDF) +
  geom_point(aes(val, 0))

parzen(interest)

intGauss <- density.default(interest, kernel = "gaussian")
plot(intGauss)

intGaussNarrow <- density.default(interest, bw=0.05, kernel = "gaussian")
plot(intGaussNarrow)

intGaussWide <- density.default(interest, bw=3, kernel = "gaussian")
plot(intGaussWide)

intWindow <- density.default(interest, kernel = "rectangular")
plot(intWindow)

intWindowNarrow <- density.default(interest, bw = 0.05, kernel = "rectangular")
plot(intWindowNarrow)

intWindowWide <- density.default(interest, bw = 3, kernel = "rectangular")
plot(intWindowWide)

normSample <- rnorm(100,50,10)
normSampDF <- tibble(val = normSample)
ggplot(data = normSampDF) +
  geom_point(aes(val, 0))


normDens <- density(normSample)
plot(normDens)

## Defaults
ggplot(data = normSampDF) +
  geom_point(aes(val, 0)) +
  geom_density(aes(val))  

## Rectangular kernel
ggplot(data = normSampDF) +
  geom_point(aes(val, 0)) +
  geom_density(aes(val), kernel="rectangular")    

## Tiny bandwidth
ggplot(data = normSampDF) +
  geom_point(aes(val, 0)) +
  geom_density(aes(val), adjust = 0.05) 

## Huge bandwidth
ggplot(data = normSampDF) +
  geom_point(aes(val, 0)) +
  geom_density(aes(val), adjust = 3) 

## Add actual density
ggplot(data = normSampDF) +
  xlim(10,90)+
  geom_point(aes(val, 0)) +
  geom_density(aes(val)) +
  geom_function(fun = dnorm, args = list(mean = 50, sd = 10))

ggplot(data = normSampDF) +
   xlim(10,90)+ geom_point(aes(val, 0)) +geom_density(aes(val)) +
  geom_function(fun = dnorm, args = list(mean = 50, sd = 10), linetype = "dashed")

ggplot(data = normSampDF) +
  geom_point(aes(val, 0)) +
  geom_density(aes(val), kernel="triangular")    


serExpTen <- rexp(10)
serExpHund <- rexp(100)
serExpThou <- rexp(1000)
serExpTenThou <- rexp(10000)

plot(density(serExpTen))
plot(density(serExpHund))
plot(density(serExpThou))
plot(density(serExpTenThou))
plot(y=dexp(x))

x <- seq(-1,9,0.01)
plot(x, dexp(x), type="l")
