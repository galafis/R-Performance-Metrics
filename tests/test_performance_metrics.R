library(testthat)

source("src/performance_metrics.R")

# Testes para calculate_mean
test_that("calculate_mean funciona corretamente", {
  expect_equal(calculate_mean(c(1, 2, 3)), 2)
  expect_equal(calculate_mean(c(10, 20, 30, 40)), 25)
  expect_equal(calculate_mean(c(5)), 5)
})

# Testes para calculate_sd
test_that("calculate_sd funciona corretamente", {
  expect_equal(round(calculate_sd(c(1, 2, 3)), 2), 1.00, tolerance = 0.01)
  # sd(c(1,2,3)) = 1
  expect_equal(round(calculate_sd(c(10, 20, 30, 40)), 2), 12.91)
  expect_equal(calculate_sd(c(5)), NA_real_)
})

# Testes para calculate_correlation
test_that("calculate_correlation funciona corretamente", {
  expect_equal(calculate_correlation(c(1, 2, 3), c(2, 4, 6)), 1)
  expect_equal(round(calculate_correlation(c(1, 2, 3), c(6, 4, 2)), 2), -1)
  expect_equal(calculate_correlation(c(1, 1, 1), c(2, 4, 6)), NA_real_)
})

