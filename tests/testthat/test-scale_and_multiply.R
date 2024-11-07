library(testthat)
library(scaleMultiply)  

test_that("Testing scale_and_multiply function", {
  # Test with standard numeric input
  expect_equal(scale_and_multiply(c(1, 0, 0.2, 0.8), 1), c(1, 0, 0.2, 0.8), tolerance = 1e-4)
  
  # Test with a vector containing negative values
  expect_equal(scale_and_multiply(c(-5, 0, 5), 2), c(0, 1, 2), tolerance = 1e-4)
  
  # Test with standard scaling and multiplication
  expect_equal(scale_and_multiply(c(1, 2, 3, 4), 10), c(0, 3.333333, 6.666667, 10), tolerance = 1e-4)
  expect_equal(scale_and_multiply(c(10, 20, 30), 0.5), c(0, 0.25, 0.5), tolerance = 1e-4)

  # Test that a non-numeric input throws an error
  expect_error(scale_and_multiply("hello", 5))
  
  # Test that a non-numeric multiplier throws an error
  expect_error(scale_and_multiply(c(1, 2, 3), "5"))
})

