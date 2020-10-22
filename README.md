
<!-- README.md is generated from README.Rmd. Please edit that file -->
nrsplot
=======

[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)

Use nrsplot to help you create ggplot2 charts in the style used by National Records of Scotland. nrsplot is inspired by the BBC Visual and Data Journalism team's [bbplot](https://medium.com/bbc-visual-and-data-journalism/how-the-bbc-visual-and-data-journalism-team-works-with-graphics-in-r-ed0b35693535). nrsplot can be used interactively or as part of a [reproducible analytical pipeline](https://ukgovdatascience.github.io/rap_companion/).

Installation
------------

### From GitHub

``` r
# install.packages("devtools")
devtools::install_github("DataScienceScotland/nrsplot")
```

### From source

1.  Go to the nrsplot [repository](https://github.com/DataScienceScotland/nrsplot) on GitHub
2.  Click **Clone or download**
3.  Click **Download ZIP**
4.  Save the zip file locally
5.  Unzip the zip file
6.  Replace &lt;THESE BITS&gt; with your information. Then run in R:

``` r
install.packages("<FILEPATH OF THE UNZIPPED FILE>/nrsplot-master", repos = NULL,
                 type="source", lib = "<YOUR R PACKAGE LIBRARY DIRECTORY>")
```

Not working? Most people seem to rush these steps. Take a breath and slow down:

-   Have you followed the above steps precisely?
-   Did you unzip the file?
-   Did you copy and paste the above code snippet accurately?
-   Have you used forward slashes in the filepaths?
-   Does the first filepath point to the file you unzipped?
    -   Are you sure it's not pointing to the original zipped file? Or the folder **containing** the unzipped file?
-   Does the second filepath point to your R package library?

Examples
--------

A normal line chart:

``` r
library(ggplot2)
library(nrsplot)
set.seed(42)

df <- data.frame(year = 1981:2020,
                 sex = c(rep("female", 40), rep("male", 40)),
                 var = diffinv(rnorm(79)) * 10,
                 endpoints = NA)

df[["endpoints"]][df[["year"]] %in% c(1981, 2020)] <- df[["var"]][df[["year"]] %in% c(1981, 2020)]

p <- ggplot(df, aes(year, var, colour = sex)) +
  labs(title = "An illustration using random data")

p +
  geom_line() +
  geom_point(aes(y = endpoints))
```

<img src="man/figures/README-example-1-1.png" width="100%" />

Apply the NRS theme:

``` r
p +
  geom_line_nrs() +
  geom_point_nrs(aes(y = endpoints, fill = sex, colour = sex)) +
  nrs_theme() +
  theme(axis.text.y = element_blank()) +
  scale_colour_manual(values = c(nrs_palette[["household"]][["main"]],
                                 nrs_palette[["neutral"]][["grey"]])) +
  scale_fill_manual(values = c("white",
                               nrs_palette[["neutral"]][["grey"]]))
```

<img src="man/figures/README-example-2-1.png" width="100%" />

## Licence
This repository is available under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
