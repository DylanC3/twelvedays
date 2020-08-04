context("sing day")

testthat("sing day works", {
  expect_equal(sing_day(xmas, 2, Full.Phrase),
  "On the second day of Christmas, my true love sent to me,\ntwo turtle doves\nand a partridge in a pear tree" )
})
