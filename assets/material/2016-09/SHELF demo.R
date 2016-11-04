library(SHELF)

## Elicit judgements from two experts individually 
# Expert 1 states P(X<30)=0.25, P(X<40)=0.5, P(X<50)=0.75
# Expert 2 states P(X<20)=0.25, P(X<25)=0.5, P(X<35)=0.75
# Both experts state 0<X<100.

## Fit distributions to each expert's judgements
(v <- matrix(c(30, 40, 50, 20, 25, 35), 3, 2))
(p <- c(0.25, 0.5, 0.75))
(myfit <- fitdist(vals = v, probs = p, lower = 0, upper = 100))

plotfit(myfit)
plotfit(myfit, lp = TRUE)

## Now elicit a single 'consensus' distribution from the two experts
# Suppose they agree P(X<25)=0.25, P(X<30)=0.5, P(X<40)=0.75
(v <-c(25, 30, 40))
(p <-c(0.25, 0.5, 0.75))
(myfit <- fitdist(vals = v, probs = p, lower = 0, upper = 100))
plotfit(myfit, ql = 0.05, qu = 0.95)
feedback(myfit, quantiles = c(0.05, 0.95), values = 50)
plotfit(myfit, ql = 0.05, qu = 0.95, int = T)


## Using shiny
elicit()

## Roulette method with shiny
roulette()

## Incorporating dependencies with Gaussian copulas
# Elicit two marginal distributions
p1 <- c(0.25, 0.5, 0.75)
v1 <- c(0.5, 0.55, 0.6)
v2 <- c(0.22, 0.3, 0.35)
myfit1 <- fitdist(v1, p1, 0, 1)
myfit2 <- fitdist(v2, p1, 0, 1)

# Elicit the concordance probability
elicitConcProb(myfit1, myfit2, 0.55, 0.3, d=c("Beta", "Beta"))
