
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Alethi font in ggplot2

This repository contains:

- the Alethi font, as created by turos of tempered steel (obtained from
  <https://www.17thshard.com/forum/topic/2285-alethi-font-and-transliterator-re-launch/>).
- the code examples for the usege of the Alethi font in ggplot2
  (**figure.R**).
- the dataset on the eyebrow raising was created by
  [Ning1253](https://github.com/Ning1253) and published here:
  <https://github.com/Ning1253/StormlightBlush/>. I converted it to .csv
  using **get-data.R**.

``` r
library(ggplot2)
library(showtext)
#> Loading required package: sysfonts
#> Loading required package: showtextdb

font_add(family = "AlethiTS_lined", regular = "AlethiTS Fontv2/AlethiTS_lined.ttf")

showtext_auto()

dat <- read.csv("stormlight-blushes.csv")

p <- ggplot(dat, aes(x = char, y = blushes)) +
  geom_col() +
  scale_x_discrete("Character") +
  scale_y_continuous("Number of blushes") +
  coord_flip() +
  theme_bw() +
  theme(legend.position = "bottom",
        axis.title = element_text(family = "AlethiTS_lined"),
        axis.text.y = element_text(family = "AlethiTS_lined", size = 3))
```

*Journey before destination*.
