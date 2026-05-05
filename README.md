# Statistical scoring model (NBA)

R Markdown project that models **NBA player points per game (PTS)** from per-game box-score style statistics. It compares **multiple linear regression** to **ridge regression** (`glmnet`) when predictors are correlated.

## Contents


| File                   | Description                                                                                                          |
| ---------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `Final Project.Rmd`    | Full analysis: data prep, EDA, MLR, diagnostics (including VIF), train/test evaluation, ridge with cross-validated λ |
| `scoringstats_nba.csv` | Player-level NBA statistics (source: [Basketball Reference](https://www.basketball-reference.com/))                  |


The analysis uses a subset of predictors aligned with offensive role: minutes (MP), field goal percentage (`FG%`, renamed `FG_PCT` in R), three-pointers made (`3P`), assists (AST), total rebounds (TRB), and turnovers (TOV). A 70/30 train–test split is used with a fixed random seed for reproducibility.

## Requirements

- [R](https://www.r-project.org/) (4.x recommended)
- R packages used in the notebook:
  - `tidyverse`
  - `caret`
  - `glmnet`
  - `car` (VIF)
  - `corrplot`

Install missing packages in R, for example:

```r
install.packages(c("tidyverse", "caret", "glmnet", "car", "corrplot"))
```

Optional: a LaTeX distribution (e.g. MacTeX or TinyTeX) if you knit to PDF.

## How to run

1. Clone or download this repository and set R’s working directory to the project folder (the same directory as `Final Project.Rmd` and `scoringstats_nba.csv`).
2. Open `Final Project.Rmd` in RStudio (or your editor of choice).
3. **Knit** the document. The YAML is set to `pdf_document`; you can change `output` to `html_document` if you prefer HTML and want to avoid LaTeX.

The notebook expects `read.csv("scoringstats_nba.csv", check.names = FALSE)` with the CSV in the working directory.

## Author

Enrico Ong — analysis dated 2026-05-04 in the source document.

## License

If you publish this repo publicly, add a license file appropriate for your course or organization. The CSV is derived from publicly available Basketball Reference statistics; comply with their [terms of use](https://www.sports-reference.com/termsofuse.html) for redistribution.