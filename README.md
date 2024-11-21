
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PaleoPackage

<img src="man/figures/Package_Logo.png" alt="PaleoPackage" align="right" style="float: right; margin-right: -100px; margin-left: 0px;" width="300"/>

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

**`bipedal_cursoriality()`:** Calculates the adjusted cadence (steps per
second) and adjusted stride ratio for bipedal aniamls based on their
body mass and leg length ratio. This function helps analyze locomotor
adaptations and cursorial potential by combining weight-based parameters
with anatomical adjustments.

**`bipedal_velocity()`:** Estimates the velocity of bipedal animals in
kilometers per hour (km/h) based on their leg length, cadence, and
stride ratio. The function calculates the speed using a biomechanical
formula that accounts for leg dimensions in millimeters, step cadence
(Hz), and stride length proportions.

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
# Calculate the optimal cadance and stride ratio for bipedal animals
bipedal_cursoriality(weight_kg = 500, leg_ratio = 1.5)
#> $Adjusted_Cadence
#> [1] 3.325
#> 
#> $Adjusted_Stride_Ratio
#> [1] 2.184
```

``` r
# Calculate the velocity for bipedal animals
bipedal_velocity(leg_length_mm = 3167, cadence = 1.395, stride_ratio = 1.424)
#> [1] 22.64826
```
