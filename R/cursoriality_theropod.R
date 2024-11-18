#' Calculate Cursoriality Parameters for Theropods
#'
#' This function calculates the optimal cadence and stride ratio for theropods based on their body mass and leg length ratio.
#'
#' @param weight_kg Numeric. The body mass of the theropod in kilograms.
#' @param leg_ratio Numeric. The ratio of (Tibia + Metatarsal III) / Femur.
#'
#' @return A list with two elements:
#' \describe{
#'   \item{Adjusted_Cadence}{Numeric. The cadence adjusted based on both body mass and leg length ratio (steps per second).}
#'   \item{Adjusted_Stride_Ratio}{Numeric. The stride ratio adjusted based on both body mass and leg length ratio.}
#' }
#'
#' @details
#' The function calculates cursoriality parameters for theropods by considering both their body mass
#' and leg length proportions. It assigns optimal cadence and stride ratio values based on the weight ranges
#' of the theropod, which are further adjusted by the ratio of tibia + metatarsal III to femur length.
#'
#' The cadence (steps per second) and stride ratio (dimensionless value representing the relationship
#' between stride length and body proportions) are initially determined from the body mass. These values
#' are then adjusted using a biomechanical scaling factor based on the leg length ratio to refine the estimates.
#'
#' For theropods heavier than 10,000 kg, the function assumes minimal cursoriality with cadence and stride
#' ratio values starting at 1. The input leg length ratio must be between 0.9 and 2.8 to ensure accurate
#' adjustments. Additionally, the total leg length (femur + tibia + metatarsal III) in meters can be used
#' in subsequent calculations for speed estimation.
#'
#' This function is designed for paleontological research and educational purposes. The values it provides
#' are estimates based on general models and may not fully represent specific species.
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
#' cursoriality_theropod(500, 1.5)
#'
#' @export
cursoriality_theropod <- function(weight_kg, leg_ratio) {
  # Validar entradas
  if (weight_kg < 0) {
    stop("Weight must be a positive value.")
  }
  if (leg_ratio < 0.9 || leg_ratio > 2.8) {
    stop("Leg ratio must be between 0.9 and 2.8.")
  }

  # Cálculo basado en peso
  if (weight_kg >= 0 && weight_kg < 0.5) {
    cadence1 <- 12
    stride_ratio1 <- 3
  } else if (weight_kg >= 0.5 && weight_kg < 1) {
    cadence1 <- 11
    stride_ratio1 <- 3
  } else if (weight_kg >= 1 && weight_kg < 2) {
    cadence1 <- 10
    stride_ratio1 <- 3
  } else if (weight_kg >= 2 && weight_kg < 4) {
    cadence1 <- 9
    stride_ratio1 <- 3
  } else if (weight_kg >= 4 && weight_kg < 10) {
    cadence1 <- 8
    stride_ratio1 <- 3
  } else if (weight_kg >= 10 && weight_kg < 20) {
    cadence1 <- 7
    stride_ratio1 <- 3
  } else if (weight_kg >= 20 && weight_kg < 50) {
    cadence1 <- 6
    stride_ratio1 <- 3
  } else if (weight_kg >= 50 && weight_kg < 100) {
    cadence1 <- 5
    stride_ratio1 <- 3
  } else if (weight_kg >= 100 && weight_kg < 250) {
    cadence1 <- 4.5
    stride_ratio1 <- 2.8
  } else if (weight_kg >= 250 && weight_kg < 500) {
    cadence1 <- 4
    stride_ratio1 <- 2.6
  } else if (weight_kg >= 500 && weight_kg < 1000) {
    cadence1 <- 3.5
    stride_ratio1 <- 2.4
  } else if (weight_kg >= 1000 && weight_kg < 2000) {
    cadence1 <- 3
    stride_ratio1 <- 2.2
  } else if (weight_kg >= 2000 && weight_kg < 4000) {
    cadence1 <- 2.5
    stride_ratio1 <- 2
  } else if (weight_kg >= 4000 && weight_kg < 8000) {
    cadence1 <- 2
    stride_ratio1 <- 1.8
  } else if (weight_kg >= 8000 && weight_kg < 10000) {
    cadence1 <- 1.5
    stride_ratio1 <- 1.6
  } else {
    cadence1 <- 1
    stride_ratio1 <- 1
  }

  # Cálculo basado en proporción de pierna (tabla ajustada)
  if (leg_ratio >= 0.9 && leg_ratio < 1) {
    factor_cadence <- 0.89
    factor_stride <- 0.85
  } else if (leg_ratio >= 1 && leg_ratio < 1.1) {
    factor_cadence <- 0.9
    factor_stride <- 0.86
  } else if (leg_ratio >= 1.1 && leg_ratio < 1.2) {
    factor_cadence <- 0.91
    factor_stride <- 0.87
  } else if (leg_ratio >= 1.2 && leg_ratio < 1.3) {
    factor_cadence <- 0.92
    factor_stride <- 0.88
  } else if (leg_ratio >= 1.3 && leg_ratio < 1.4) {
    factor_cadence <- 0.93
    factor_stride <- 0.89
  } else if (leg_ratio >= 1.4 && leg_ratio < 1.5) {
    factor_cadence <- 0.94
    factor_stride <- 0.9
  } else if (leg_ratio >= 1.5 && leg_ratio < 1.6) {
    factor_cadence <- 0.95
    factor_stride <- 0.91
  } else if (leg_ratio >= 1.6 && leg_ratio < 1.7) {
    factor_cadence <- 0.96
    factor_stride <- 0.93
  } else if (leg_ratio >= 1.7 && leg_ratio < 1.8) {
    factor_cadence <- 0.97
    factor_stride <- 0.95
  } else if (leg_ratio >= 1.8 && leg_ratio < 1.9) {
    factor_cadence <- 0.98
    factor_stride <- 0.97
  } else if (leg_ratio >= 1.9 && leg_ratio < 2.0) {
    factor_cadence <- 0.99
    factor_stride <- 0.99
  } else {
    factor_cadence <- 1
    factor_stride <- 1
  }

  adjusted_cadence <- cadence1 * factor_cadence
  adjusted_stride_ratio <- stride_ratio1 * factor_stride

  return(list(
    Adjusted_Cadence = adjusted_cadence,
    Adjusted_Stride_Ratio = adjusted_stride_ratio
  ))
}
