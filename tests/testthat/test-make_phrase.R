context("make phrase")

test_that("make phrase works", {
  expect_equal(make_phrase(num = 10, num_word = "ten", item = "lords", verb = "a-leaping"), "ten lords a-leaping")
})
