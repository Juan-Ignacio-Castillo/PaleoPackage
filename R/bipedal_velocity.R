#' Calculate Velocity of a Bipedal Animal
#'
#' This function estimates the velocity of a bipedal animal in km/h based on its leg length, cadence, and stride ratio.
#'
#' @param leg_length_mm Numeric. The length of the animal's leg in millimeters (sum of femur, tibia, and metatarsal III).
#' @param cadence Numeric. The cadence of the animal in steps per second (Hz).
#' @param stride_ratio Numeric. The stride ratio, which is the proportion between stride length and leg length.
#' @param time_constant Numeric. The space-time constant for velocity calculation. Defaults to 0.0036 for results in km/h.
#'
#' @return Numeric. The velocity of the bipedal animal in kilometers per hour (km/h).
#'
#' @details
#' The velocity is calculated using the formula:
#' \deqn{velocity = (leg\_length\_mm \times cadence \times stride\_ratio) \times time\_constant}
#'
#' The leg length must be provided in millimeters, and the cadence should be given in steps per second.
#' The stride ratio is a dimensionless proportion between stride length and leg length.
#'
#' The `time_constant` is set to 0.0036 by default, which converts the result to kilometers per hour (km/h). If results
#' in meters per second (m/s) are needed, use a `time_constant` of 0.001.
#'
#' @note
#' Ensure that all input values are positive. This function is designed for paleontological and biomechanical research.
#'
#' @references
#' Coombs, W. P. (1978). "Theoretical Aspects of Cursorial Adaptations in Dinosaurs."
#' Alexander, R. M. (1976). "Estimates of Speeds of Dinosaurs." Nature, 261:129–130.
#' Molina and Larramendi (2016). "Dinosaur Facts and Figures - The Theropods and Other Dinosauriformes."
#'
#' @author
#' Juan Ignacio Castillo
#'
#' @examples
#' bipedal_velocity(leg_length_mm = 3167, cadence = 1.395, stride_ratio = 1.424)
#'
#' @export
bipedal_velocity <- function(leg_length_mm, cadence, stride_ratio, time_constant = 0.0036) {
  if (leg_length_mm <= 0) stop("Leg length (LL) must be a positive value.")
  if (cadence <= 0) stop("Cadence (C) must be a positive value.")
  if (stride_ratio <= 0) stop("Stride ratio (SR) must be a positive value.")
  if (time_constant <= 0) stop("Time constant (ST) must be a positive value.")

  velocity <- (leg_length_mm * cadence * stride_ratio) * time_constant

  return(velocity)
}
