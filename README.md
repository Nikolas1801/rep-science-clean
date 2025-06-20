# Trump–Biden Twitter Framing Analysis

This project analyzes how often Donald J. Trump mentioned Joe Biden on Twitter during the 2020 U.S. presidential campaign using a dataset of tweets.

## How to Use

1. Download the file `DT.ndjson` and place it in the same folder as this project.
2. Open `trump_analysis.R` in RStudio.
3. Run the script to see a basic plot of tweet frequency mentioning Biden.

## Important

Due to GitHub’s 100MB file limit, the dataset (`DT.ndjson`) is not included in this repository. You must store it locally.
The Dataset can be downloaded via the following link: https://drive.google.com/file/d/1LOkjt7Iqft8E7LguBvrRxsb5CNtX98HH/view?usp=sharing

## Required R Packages

You’ll need the following packages:
```r
install.packages(c("ndjson", "dplyr", "ggplot2"))
