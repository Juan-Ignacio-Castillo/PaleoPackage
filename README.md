
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

**`allometric_mass()`:** Estimates the body mass of an organism based on
femur measurements using allometric scaling formulas.

**`cursoriality_theropod()`:** Calculates the adjusted cadence (steps
per second) and adjusted stride ratio for theropods based on their body
mass and leg length ratio. This function helps analyze locomotor
adaptations and cursorial potential by combining weight-based parameters
with anatomical adjustments.

## Example

This is a basic example which shows you how to solve common problems
using `PaleoPackage`:

``` r
library(PaleoPackage)
```

``` r
# Calculate the estimated body mass
allometric_mass(reference_weight = 8800, reference_femur = 136.5, estimated_femur = 143)
#> [1] 10117.96
```

``` r
# Calculate the optimal cadance and stride ratio for theropods
cursoriality_theropod(weight_kg = 500, leg_ratio = 1.5)
#> $Adjusted_Cadence
#> [1] 3.325
#> 
#> $Adjusted_Stride_Ratio
#> [1] 2.184
```
