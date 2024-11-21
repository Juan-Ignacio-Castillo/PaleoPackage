test_that("bipedal_velocity calculates velocity correctly", {
  result <- bipedal_velocity(leg_length_mm = 3167, cadence = 1.395, stride_ratio = 1.424)
  expect_equal(result, 22.65, tolerance = 1e-3)
  result <- bipedal_velocity(leg_length_mm = 3167, cadence = 1.395, stride_ratio = 1.424, time_constant = 0.001)
  expect_equal(result, 6.29, tolerance = 1e-3)
  result <- bipedal_velocity(leg_length_mm = 500, cadence = 1.2, stride_ratio = 1.1)
  expect_equal(result, 2.376, tolerance = 1e-3)
})

test_that("bipedal_velocity handles invalid inputs correctly", {
  expect_error(bipedal_velocity(leg_length_mm = -3167, cadence = 1.395, stride_ratio = 1.424),
               "Leg length \\(LL\\) must be a positive value.")
  expect_error(bipedal_velocity(leg_length_mm = 3167, cadence = -1.395, stride_ratio = 1.424),
               "Cadence \\(C\\) must be a positive value.")
  expect_error(bipedal_velocity(leg_length_mm = 3167, cadence = 1.395, stride_ratio = -1.424),
               "Stride ratio \\(SR\\) must be a positive value.")
  expect_error(bipedal_velocity(leg_length_mm = 3167, cadence = 1.395, stride_ratio = 1.424, time_constant = -0.0036),
               "Time constant \\(ST\\) must be a positive value.")
})

test_that("bipedal_velocity handles edge cases correctly", {
  result <- bipedal_velocity(leg_length_mm = 100, cadence = 0.1, stride_ratio = 0.1)
  print(paste("Actual result:", result))
  print(paste("Expected value:", 3.6e-3))
  expect_equal(result, 3.6e-3, tolerance = 1e-9)
  result <- bipedal_velocity(leg_length_mm = 1e6, cadence = 100, stride_ratio = 10)
  expect_equal(result, 3.6e6, tolerance = 1e-3)
})
