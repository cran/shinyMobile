test_that("link works", {
  expect_s3_class(f7Link(href = "https://google.com"), "shiny.tag")
  expect_identical(f7Link(href = "test")$attribs$class, "link external")

  expect_identical(
    f7Link("plop", href = "/plop", routable = TRUE)$attribs$class,
    "link"
  )
})
