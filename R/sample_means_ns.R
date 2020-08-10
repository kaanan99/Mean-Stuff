#' @param vec A vector to mass in
#' @param ns TA veector of sample sizes
#' @param reps The number of times repeated
#' @return A Data of Sample means and ns
#' @import tidyverse

library(tidyverse)

sample_means_ns<-function(vec, reps, ns){
  names <- as.character(ns)
  map(ns, ~many_sample_means(vec, .x, reps)) %>% 
    data.frame() %>%
    setNames(names) %>%
    pivot_longer(names, values_to = "Sample_Mean", names_to = "n") %>%
    mutate(n = as.double(n)) %>%
    select("Sample_Mean", n)
}
