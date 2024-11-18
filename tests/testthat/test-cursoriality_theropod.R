test_that("Valid inputs return correct adjusted values", {
  result <- cursoriality_theropod(2, 1.5)
  expect_equal(round(result$Adjusted_Cadence, 2), 8.55)
  expect_equal(round(result$Adjusted_Stride_Ratio, 2), 2.73)
})

test_that("Negative weight throws error", {
  expect_error(cursoriality_theropod(-1, 1.5), "Weight must be a positive value.")
})

test_that("Leg ratio outside bounds throws error", {
  expect_error(cursoriality_theropod(2, 0.8), "Leg ratio must be between 0.9 and 2.8.")
  expect_error(cursoriality_theropod(2, 3.0), "Leg ratio must be between 0.9 and 2.8.")
})

test_that("Lower boundary weight returns correct cadence", {
  result <- cursoriality_theropod(0.5, 1.0)
  expect_equal(result$Adjusted_Cadence, 11 * 0.9)
  expect_equal(result$Adjusted_Stride_Ratio, 3 * 0.86)
})

test_that("Weight above 10000 adjusts cadence and stride ratio based on leg ratio", {
  result <- cursoriality_theropod(15000, 1.0)
  expect_equal(result$Adjusted_Cadence, 1 * 0.9)
  expect_equal(result$Adjusted_Stride_Ratio, 1 * 0.86)
})
