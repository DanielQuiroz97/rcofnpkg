test_that("uss_make_matches works", {
  italy <- italy <- uss_make_matches(engsoccerdata::italy)
  expect_true(tibble::is_tibble(italy))
})
