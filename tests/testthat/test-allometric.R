test_that("Proportionality holds when estimated femur equals reference femur", {
  result <- allometric_mass(reference_weight = 10000, reference_femur = 150, estimated_femur = 150)
  expect_equal(result, 10000)
})

test_that("Handles small femur values correctly", {
  result <- allometric_mass(reference_weight = 10000, reference_femur = 150, estimated_femur = 15)
  expect_equal(round(result, 2), 10)
})

test_that("Handles large femur values correctly", {
  result <- allometric_mass(reference_weight = 10000, reference_femur = 150, estimated_femur = 300)
  expect_equal(round(result, 2), 80000)
})

test_that("Basic calculations are correct", {
  result <- allometric_mass(reference_weight = 8800, reference_femur = 136.5, estimated_femur = 143)
  expect_equal(result, 10118, tolerance = 0.01)
})

test_that("Throws an error for invalid inputs", {
  expect_error(allometric_mass(reference_weight = -8800, reference_femur = 136.5, estimated_femur = 143),
               "reference_weight must be positive")
  expect_error(allometric_mass(reference_weight = 8800, reference_femur = -136.5, estimated_femur = 143),
               "reference_femur must be positive")
  expect_error(allometric_mass(reference_weight = 8800, reference_femur = 136.5, estimated_femur = -143),
               "estimated_femur must be positive")
})
