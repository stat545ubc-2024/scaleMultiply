
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scaleMultiply

<!-- badges: start -->

<!-- badges: end -->

The scaleMultiply package provides a utility function,
`scale_and_multiply`, that scales a numeric vector to the range \[0, 1\]
and then multiplies each element by a specified multiplier. This can be
useful for data normalization and transformation tasks.

## Installation

You can install the development version of scaleMultiply from
[GitHub](https://github.com/) with:

``` r
# install devtools if you haven't already
install.packages("devtools")
# use devtools to install this function packsage
devtools::install_github("stat545ubc-2024/scaleMultiply")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(scaleMultiply)

# Scale the vector to [0, 1] and multiply by 10
result <- scale_and_multiply(c(1, 2, 3, 4), multiplier = 10)
print(result)
#> [1]  0.000000  3.333333  6.666667 10.000000
```

In this example, the scale_and_multiply function takes a numeric vector
c(1, 2, 3, 4), scales it to the range \[0, 1\], and then multiplies each
element by the specified multiplier (10).
