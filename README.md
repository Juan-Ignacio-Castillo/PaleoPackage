
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

**`volumetric()`:** Estimates the body mass of an organism based on
femur measurements using volumetric scaling formulas.

**`cursoriality_theropod()`:** Calculates the optimal cadence (steps per
second) and stride ratio for theropods based on their body mass. This
function classifies theropods into weight ranges and assigns
corresponding biomechanical parameters, aiding in the analysis of
locomotor adaptations and cursoriality.

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

``` r
# Calculate the optimal cadance and stride ratio for theropods
cursoriality_theropod(5000)
#> $Optimal_cadence
#> [1] 2
#> 
#> $Optimal_stride_ratio
#> [1] 1.8
```
