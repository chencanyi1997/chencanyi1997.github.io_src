---
title: Managing Data Frames with the `dplyr` package
author: Chen Canyi
date: '2020-03-26'
slug: managing-data-frames-with-the-dplyr-package
categories: []
tags: ['dplyr']
subtitle: ''
summary: ''
authors: []
lastmod: '2020-03-26T10:33:24+08:00'
featured: no
draft: yes
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

This post is mainly taken from *Exporatory Data Analysis with R, Roger D. Peng*.

### `dplyr` Grammar

* `select`: return a subset of the columns of a data frame.
* `filter`: extract a subset of rows from a data frame based on logical conditions.
* `arrange`: recorder rows of a data frame.
* `rename`: rename variables of a data frame.
* `mutate`: add new variables/columns or transform existing variables.
* `summarise`/`summarize`: generate summary statistics of different variables in the data frame or within strata.
* `%>%`: the pipe operator.
