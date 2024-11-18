
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PaleoPackage

<!-- badges: start -->
<!-- badges: end -->

The goal of `PaleoPackage` is to provide a suite of tools for estimating
various physical and ecological parameters of extinct animals based on
anatomical measurements. These parameters include body mass, length,
speed, and other derived metrics that are crucial for reconstructing the
biology and behavior of extinct organisms. The package leverages
volumetric and scaling formulas, as well as principles of biomechanics,
to offer robust methods for analyzing fossil data.

## Installation

You can install the development version of PaleoPackage from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("Juan-Ignacio-Castillo/PaleoPackage")
```

## Functions

Here are some of the main functions provided by `PaleoPackage`:

\-**`volumetric()`**: Estimates the body mass of an organism based on
femur measurements using volumetric scaling formulas.

## Example

This is a basic example which shows you how to solve common problems
using `PaleoPackage`:

``` r
library(PaleoPackage)
```

``` r
# Calculate the estimated body mass
volumetric(reference_weight = 8800, reference_femur = 136.5, estimated_femur = 143)
#> [1] 10117.96
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
