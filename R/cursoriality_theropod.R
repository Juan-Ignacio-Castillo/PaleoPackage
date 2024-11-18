#' Calculate Cursoriality Parameters for Theropods
#'
#' This function calculates the optimal cadence and stride ratio for theropods based on their body mass.
#'
#' @param weight_kg Numeric. The body mass of the theropod in kilograms.
#'
#' @return A list with two elements:
#' \describe{
#'   \item{Optimal_cadence}{Numeric. The optimal cadence for the given body mass (steps per second).}
#'   \item{Optimal_stride_ratio}{Numeric. The optimal stride ratio for the given body mass.}
#' }
#'
#' @details
#' The function categorizes theropods into weight ranges and assigns optimal cadence and stride ratio values based on these ranges.
#' These values are derived from biomechanical principles and empirical studies of extant cursorial animals.
#'
#' The cadence represents the number of steps taken per second, while the stride ratio is a dimensionless value
#' that represents the relationship between stride length and body proportions. For theropods heavier than 10,000 kg,
#' the function assumes minimal cursoriality with cadence and stride ratio values of 1.
#' It is crucial to provide the body mass in kilograms to ensure accurate parameter calculations.
#'
#' @note
#' This function is designed for paleontological research and educational purposes. The values it provides are estimates
#' based on general models and may not fully represent specific species.
#'
#' @references
#' Coombs, W. P. (1978). "Theoretical Aspects of Cursorial Adaptations in Dinosaurs."
#' Alexander, R. M. (1976). "Estimates of Speeds of Dinosaurs." Nature, 261:129–130.
#' Molina and Larramendi (2016). "Dinosaur Facts and Figures - The Theropods and Other Dinosauriformes"
#'
#' @author
#' Juan Ignacio Castillo
#'
#' @examples
#' cursoriality_theropod(500)
#'
#' @export
cursoriality_theropod <- function(weight_kg) {
  if (weight_kg < 0) {
    stop("Weight must be a positive value.")
  }

  if (weight_kg >= 0 && weight_kg < 0.5) {
    cadence <- 12
    stride_ratio <- 3
  } else if (weight_kg >= 0.5 && weight_kg < 1) {
    cadence <- 11
    stride_ratio <- 3
  } else if (weight_kg >= 1 && weight_kg < 2) {
    cadence <- 10
    stride_ratio <- 3
  } else if (weight_kg >= 2 && weight_kg < 4) {
    cadence <- 9
    stride_ratio <- 3
  } else if (weight_kg >= 4 && weight_kg < 10) {
    cadence <- 8
    stride_ratio <- 3
  } else if (weight_kg >= 10 && weight_kg < 20) {
    cadence <- 7
    stride_ratio <- 3
  } else if (weight_kg >= 20 && weight_kg < 50) {
    cadence <- 6
    stride_ratio <- 3
  } else if (weight_kg >= 50 && weight_kg < 100) {
    cadence <- 5
    stride_ratio <- 2.8
  } else if (weight_kg >= 100 && weight_kg < 250) {
    cadence <- 4.5
    stride_ratio <- 2.6
  } else if (weight_kg >= 250 && weight_kg < 500) {
    cadence <- 4
    stride_ratio <- 2.4
  } else if (weight_kg >= 500 && weight_kg < 1000) {
    cadence <- 3.5
    stride_ratio <- 2.2
  } else if (weight_kg >= 1000 && weight_kg < 2000) {
    cadence <- 3
    stride_ratio <- 2
  } else if (weight_kg >= 2000 && weight_kg < 4000) {
    cadence <- 2.5
    stride_ratio <- 1.8
  } else if (weight_kg >= 4000 && weight_kg < 8000) {
    cadence <- 2
    stride_ratio <- 1.8
  } else if (weight_kg >= 8000 && weight_kg < 10000) {
    cadence <- 1.5
    stride_ratio <- 1.6
  } else {
    cadence <- 1
    stride_ratio <- 1
  }

  return(list(
    Optimal_cadence = cadence,
    Optimal_stride_ratio = stride_ratio
  ))
}
