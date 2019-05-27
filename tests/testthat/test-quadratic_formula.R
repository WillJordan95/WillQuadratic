library(testthat)
library(WillQuadratic)

context("quadratic_formula()")

test_that('Calculated correctly', {
  expect_equal(quadratic_formula(1,-6,9), 3) #Repeated root tet
  expect_equal(quadratic_formula(2,8,-42), c(3, -7)) #Disctinct, real roots test
  expect_equal(quadratic_formula(2,-4, 4), complex(2, real = c(1,1), imaginary = c(1,-1)))
  expect_error(quadratic_formula(1, 2, NA))
})
