# Install required libraries if not already installed
if (!require("dplyr")) install.packages("dplyr")
if (!require("ggplot2")) install.packages("ggplot2")
if (!require("reshape2")) install.packages("reshape2")

# Load libraries
library(dplyr)
library(ggplot2)
library(reshape2)

# Corrected file path for your dataset
file_path <- "C:/Users/Allah/Downloads/bestsellers with categories.csv"

# Load the dataset
books <- read.csv(file_path, stringsAsFactors = FALSE)

# Preview the dataset
head(books)

# Ensure column names are consistent
colnames(books) <- tolower(colnames(books))

# 1. Bar Chart: Number of books by Genre
ggplot(data = books, aes(x = genre)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Number of Books by Genre", x = "Genre", y = "Count") +
  theme_minimal()

# 2. Histogram: Distribution of User Ratings
ggplot(data = books, aes(x = user.rating)) +
  geom_histogram(binwidth = 0.1, fill = "lightgreen", color = "black") +
  labs(title = "Distribution of User Ratings", x = "User Rating", y = "Frequency") +
  theme_minimal()

# 3. Boxplot: Distribution of Prices by Genre
ggplot(data = books, aes(x = genre, y = price, fill = genre)) +
  geom_boxplot() +
  labs(title = "Distribution of Prices by Genre", x = "Genre", y = "Price") +
  theme_minimal()

# 4. Scatterplot: Relationship between Reviews and Price
ggplot(data = books, aes(x = reviews, y = price)) +
  geom_point(color = "blue", alpha = 0.6) +
  labs(title = "Relationship between Reviews and Price", x = "Number of Reviews", y = "Price") +
  theme_minimal()

# 5. Line Graph: Average User Rating per Year
avg_rating_year <- books %>%
  group_by(year) %>%
  summarise(avg_rating = mean(user.rating))

ggplot(data = avg_rating_year, aes(x = year, y = avg_rating)) +
  geom_line(color = "darkred", size = 1) +
  geom_point(color = "darkred", size = 2) +
  labs(title = "Average User Rating per Year", x = "Year", y = "Average User Rating") +
  theme_minimal()

# 6. Correlation Heatmap: Numeric Variables
numeric_data <- books %>% select(user.rating, reviews, price)
cor_matrix <- cor(numeric_data)

melted_cor_matrix <- melt(cor_matrix)

ggplot(data = melted_cor_matrix, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0, limit = c(-1, 1)) +
  labs(title = "Correlation Heatmap", x = "Variables", y = "Variables") +
  theme_minimal()

# 7. Boxplot: User Ratings by Genre
ggplot(data = books, aes(x = genre, y = user.rating, fill = genre)) +
  geom_boxplot() +
  labs(title = "User Ratings by Genre", x = "Genre", y = "User Rating") +
  theme_minimal()

# 8. Bar Chart: Average Price by Genre
avg_price_genre <- books %>%
  group_by(genre) %>%
  summarise(avg_price = mean(price))

ggplot(data = avg_price_genre, aes(x = genre, y = avg_price, fill = genre)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Price by Genre", x = "Genre", y = "Average Price") +
  theme_minimal()

# 9. Pie Chart: Proportion of Books in Fiction vs. Non-Fiction
genre_counts <- books %>%
  group_by(genre) %>%
  summarise(count = n())

ggplot(data = genre_counts, aes(x = "", y = count, fill = genre)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Proportion of Books by Genre", x = NULL, y = NULL) +
  theme_void() +
  theme(legend.title = element_blank())

