

library(foreign)
library(coxme)
library(splines)
library(ggeffects)
library(ggplot2)
library(tidyverse)
library(utils)
library(broom)
library(lme4)
library(jtools)
options("jtools-digits" = 4) 


load("data/fitsurvtable.RData")


## Grafik zeitliche Entwicklung ####
mod2 <- lmer (median~as.factor(JAHR)+(1|STNRNEU),fitsurvtable)
summary(mod2)
AIC(mod2)
pred2 <- ggpredict(mod2,terms="JAHR")


