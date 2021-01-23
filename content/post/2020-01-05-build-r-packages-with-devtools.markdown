---
title: Build R packages with devtools
author: Chen Canyi
date: '2020-01-05'
slug: build-r-packages-with-devtools
categories: []
tags: ["R packages","devtools"]
subtitle: ''
summary: ''
authors: []
lastmod: '2020-01-05T17:33:04+08:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---
This post mainly follows [The whole game](https://r-pkgs.org/whole-game.html
).

* Load Preliminaries

```r
library(devtools)
```
* Create Package

```r
create_package("~/path/to/PACKAGENAME")
```

* `use_git()`

```r
# Initial set up
git config --global user.name "YOUR FULL NAME"
git config --global user.email "YOUR EMAIL ADDRESS"

use_git()
```

* `use_r()`

```r
use_r('gen_data')
```

* `use_package()`




## References
* [R packages](https://r-pkgs.org/)
