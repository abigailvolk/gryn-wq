
<!-- README.md is generated from README.Rmd. Please edit that file -->

# grynwq

<!-- badges: start -->
<!-- badges: end -->

The goal of grynwq is to pull and analyze water quality data from the
WQP.

## Installation

You can install the development version of grynwq from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("abigailvolk/gryn-wq")
```

## Example

This is a basic example which shows you how to create a list of
current/legacy sites:

``` r
library(grynwq)
generate_gryn_sites()
#> $sites
#> [1] "11NPSWRD_WQX-GRTE_SNR01"    "11NPSWRD_WQX-GRTE_SNR02"   
#> [3] "11NPSWRD_WQX-YELL_MDR"      "11NPSWRD_WQX-YELL_LM000.5M"
#> [5] "11NPSWRD_WQX-YELL_SB015.7A" "11NPSWRD_WQX-YELL_YS549.7M"
#> [7] "11NPSWRD_WQX-BICA_BHR2"     "11NPSWRD_WQX-BICA_BHR1"    
#> [9] "11NPSWRD_WQX-BICA_SHR1"    
#> 
#> $legacy_project
#> [1] "YELLWQ01_LEGACY"
#> 
#> $legacy_sites
#> [1] "11NPSWRD_WQX-YELL_MD133.2T" "11NPSWRD_WQX-YELL_LM000.5M"
#> [3] "11NPSWRD_WQX-YELL_SB015.7A" "11NPSWRD_WQX-YELL_YS549.7M"
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
