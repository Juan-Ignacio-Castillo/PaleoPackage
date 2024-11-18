velocity <- function(leg_length_m, cadence, stride_ratio, time_constant = 0.0036) {
  if (leg_length_m <= 0) stop("Leg length (LL) must be a positive value.")
  if (cadence <= 0) stop("Cadence (C) must be a positive value.")
  if (stride_ratio <= 0) stop("Stride ratio (SR) must be a positive value.")
  if (time_constant <= 0) stop("Time constant (ST) must be a positive value.")

  velocity <- (leg_length_m * cadence * stride_ratio) * time_constant

  return(velocity)
}
