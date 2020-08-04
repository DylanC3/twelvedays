context("pluralize gift")

test_that("pluralize gift works", {
  expect_equal(pluralize_gift("lord", "two"), "lords")
})
