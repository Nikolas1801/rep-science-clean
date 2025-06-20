
---
  
  ### 📄 `trump_analysis.R`
  ```r
# trump_analysis.R

# Load required libraries
library(ndjson)
library(dplyr)
library(ggplot2)

# Check if data file exists
if (file.exists("DT.ndjson")) {
  message("✅ DT.ndjson found. Loading and analyzing...")
  
  # Load tweets from NDJSON
  tweets <- ndjson::stream_in("DT.ndjson")
  
  # Filter for tweets that mention "Biden"
  biden_tweets <- tweets %>%
    filter(grepl("Biden", text, ignore.case = TRUE))
  
  # Count tweets per day
  plot_data <- biden_tweets %>%
    mutate(date = as.Date(created_at)) %>%
    count(date)
  
  # Plot
  ggplot(plot_data, aes(x = date, y = n)) +
    geom_line(color = "blue") +
    labs(
      title = "Trump Tweets Mentioning Biden (2020)",
      x = "Date",
      y = "Number of Tweets"
    )
  
} else {
  message("❌ DT.ndjson not found! Please place it in the project folder.")
}
