#' Calculate Body Mass Using a Volumetric Formula
#'
#' This function estimates the body mass of an organism based on its femur length using a volumetric formula.
#'
#' @param reference_weight Numeric. The known weight of the reference organism (e.g., in kilograms).
#' @param reference_femur Numeric. The femur length of the reference organism (e.g., in centimeters).
#' @param estimated_femur Numeric. The femur length of the organism whose mass is being estimated (e.g., in centimeters).
#'
#' @return Numeric. The estimated body mass of the organism (in the same units as the reference weight).
#'
#' @details
#' This function assumes a cubic scaling relationship between weight and femur size.
#' It is crucial that the reference weight and femur length are derived from an organism
#' that is closely related or shares similar anatomical proportions with the organism whose
#' mass is being estimated. Using unrelated reference data may result in inaccurate estimates.
#' Ensure that all measurements use consistent units (e.g., kilograms and centimeters).
#'
#' @note
#' This function is designed for academic use and paleontological applications.
#'
#' @references
#' Hurlburt, G. R. (1999). "Comparison of Body Mass Estimation Techniques for Dinosaurs."
#' Journal of Vertebrate Paleontology, 19(4): 679-685.
#'
#' @author
#' Juan Ignacio Castillo
#'
#' @example
#' volumetric(8800, 136.5, 140)
#'
#' @export
volumetric <- function(reference_weight, reference_femur, estimated_femur) {
  mass <- reference_weight * (estimated_femur / reference_femur)^3
  return(mass)
}
