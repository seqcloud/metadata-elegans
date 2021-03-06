context("ftp : geneOtherIDs")

test_that("current", {
    x <- geneOtherIDs(release = NULL)
    expect_s4_class(x, "CharacterList")
})

test_that("stable", {
    x <- geneOtherIDs(release = release)
    expect_s4_class(x, "CharacterList")
    expect_identical(
        object = length(x),
        expected = ngene
    )
    expect_identical(
        object = x[[1L]],
        expected = c("aap-1", "Y110A7A.10")
    )
})
