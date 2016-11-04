library(RUnit)
n <- 3
t  <- c(0, 17, 27, 32, 42, 46, 53, 62, 75, 85, 86, 92, 100)
s <-  c(2,  3,  2,  1,  3,  2,  3,  1,  2,  3,  1,  2,   2)

plot(t, s, type="s", xlab="Time", ylab="State")


calc_time_in_states <- function(times, states, num_states) {
  
  # check if times same length as states, throw exception if not
  if(length(times) != length(states)) stop('Time and state vectors not of equal length')

  # check that times is strictly increasing vector
  if(!identical(times, sort(times))) stop('Time vector is not strictly increasing')
    
  # check there is only valid states in the state vector
  if(any(!(states %in% 1:num_states))) stop('State vector includes invalid state entries')
    
  # calc time in each state using a for loop
  time_in_state <- rep(0, times = num_states)
  for(i in 2:length(times)) {
      time_in_state[states[i-1]] <- time_in_state[states[i-1]] + times[i] - times[i-1] 
  }

  return(time_in_state)
}

checkEquals(calc_time_in_states(times = t, states = s, num_states = n), 
            c(29, 47, 24))


invalid_s <- c(2,3,2,1,3,4,3,1,2,3,1,2,2)
checkException(calc_time_in_states(times = t, states = invalid_s, num_states = n))

invalid_t <- c(0, 17,32,27,42,46,53,62,75,85,86,92, 100)
checkException(calc_time_in_states(times = invalid_t, states = s, num_states = n))

bugged_calc_time_in_states <- function(times, states, num_states) {
    
    # check if times same length as states, throw exception if not
    if(length(times) != length(states)) stop('Time and state vectors not of equal length')
    
    # check that times is strictly increasing vector
    if(!identical(times, sort(times))) stop('Time vector is not strictly increasing')
    
    # check there is only valid states in the state vector
    if(any(!(states %in% 1:num_states))) stop('State vector includes invalid state entries')
    
    # calc time in each state using a for loop
    time_in_state <- rep(0, times = num_states)
    for(i in 2:length(times)) {
        time_in_state[states[i-1]] <- time_in_state[states[i-1]] + times[i] - times[i-1] + 1
    }
    
    return(time_in_state)
}

checkEquals(bugged_calc_time_in_states(times = t, states = s, num_states = n),
            c(29, 47, 24))




#######
SimContMarkov <- function(T, s_0, G) 
{
    t <- 0; s <- s_0; states <- c(); times <- c()
    while(t <= T)
    {
        states <- c(states, s); times <- c(times, t)
        tStar <- rexp(1, rate=-G[s,s])
        sStar <- sample((1:nrow(G))[-s], 1, prob=G[s,-s]/-G[s,s])
        t <- t + tStar; s <- sStar
    }
    return(list(states=states, times=times))    
}

simTime <- 100
initState <- 1
G <- rbind(c(-0.2,0.12,0.08),c(0.04,-0.08,0.04),c(0.5,0,-0.5))

run_sim <- function() {
    M<-SimContMarkov(simTime,initState,G)
    plot.new()
    plot.window(ylim=c(1,nrow(G)), xlim=c(0,simTime))
    axis(1)
    axis(2,at=c(1,2,3))
    title(xlab="Time", ylab="State")
    box()
    lines(c(M$times,100),c(M$states,M$states[length(M$states)]),type="s")
}

run_sim()