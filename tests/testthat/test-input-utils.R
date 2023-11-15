test_that("generate_gryn_sites() generates a list", {
  sites <- generate_gryn_sites()
  expect_equal(is.list(sites), TRUE)
})
