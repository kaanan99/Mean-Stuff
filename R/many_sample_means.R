#' @param vec A vector to mass in
#' @param n The sample size
#' @param reps The number of times repeated
#' @return A vector of means
#' @import tidyverse

library(tidyverse)

many_sample_means <- function(vec, n, reps){
  return(replicate(reps, sample_mean(vec, n)))
}