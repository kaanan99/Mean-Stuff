#' @param vec A vector to mass in
#' @param n The sample size
#' @return A mean
#' @import tidyverse

library(tidyverse)

sample_mean <- function(vec, n){
  return(mean(sample(vec, n, replace = TRUE)))
}