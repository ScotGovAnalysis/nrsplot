
<!-- README.md is generated from README.Rmd. Please edit that file -->
nrsplot
=======

[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)

Use nrsplot to help you create ggplot2 charts in the style used by National Records of Scotland. nrsplot is inspired by the BBC Visual and Data Journalism team's [bbplot](https://medium.com/bbc-visual-and-data-journalism/how-the-bbc-visual-and-data-journalism-team-works-with-graphics-in-r-ed0b35693535). nrsplot can be used interactively or as part of a [reproducible analytical pipeline](https://ukgovdatascience.github.io/rap_companion/).

Installation
------------

Install nrsplot from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("DataScienceScotland/nrsplot")
```

If the above does not work, you can install from source:

1.  Go to the nrsplot [repository](https://github.com/DataScienceScotland/nrsplot) on GitHub
2.  Click **Clone or download** then **Download ZIP**
3.  Save the file locally (e.g. your H drive) and Unzip
4.  Install with install.packages()

``` r
install.packages("your/directory/nrsplot-master", repos = NULL,
                 type="source", lib = "your/R/package/library/directory")
```

Example
-------

A normal line chart:

``` r
library(ggplot2)
library(nrsplot)

beaver <- beaver1[beaver1[["day"]] == 346,]

p <- ggplot(beaver, aes(time, temp)) +
  geom_line()

p
```

<img src="man/figures/README-example-1-1.png" width="100%" />

Apply the NRS theme:

``` r
p + nrs_theme()
```

<img src="man/figures/README-example-2-1.png" width="100%" />
