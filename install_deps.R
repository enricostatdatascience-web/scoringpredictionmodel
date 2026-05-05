#!/usr/bin/env Rscript
# Install R packages required by Final Project.Rmd (and render.R).
repos <- c(CRAN = "https://cloud.r-project.org")
pkgs <- c("tidyverse", "caret", "glmnet", "car", "corrplot", "rmarkdown")
ip <- rownames(installed.packages(noCache = TRUE, lib.loc = .libPaths()))
missing <- setdiff(pkgs, ip)
if (length(missing)) {
  install.packages(missing, repos = repos)
}
