#!/usr/bin/env Rscript
# Render the analysis from the project root (directory that contains this file and the Rmd).
rmd <- "Final Project.Rmd"
if (!file.exists(rmd)) {
  stop("Run this script from the project root; missing: ", rmd)
}
rmarkdown::render(rmd)
