# Research Question and Analysis Documentation

## Overview
This project explores the **Bestsellers with Categories** dataset to investigate the following research question:

**"Is there a difference in the mean user rating between Fiction and Non-Fiction books?"**

We aim to understand how genre influences user ratings by conducting statistical analysis and creating visualizations.

## Dataset Description
- **Dataset Name**: Bestsellers with Categories
- **Source**: Amazon's bestsellers list
- **Number of Rows**: 550
- **Key Variables**:
  - `Name`: Title of the book
  - `Author`: Author of the book
  - `User Rating`: Average user rating for the book (Interval)
  - `Reviews`: Number of user reviews (Interval)
  - `Price`: Price of the book (Interval)
  - `Year`: Year of publication (Ordinal/Interval)
  - `Genre`: Category of the book (Nominal - Fiction or Non-Fiction)

## Research Question and Hypotheses
- **Research Question**: Is there a difference in the mean user rating between Fiction and Non-Fiction books?
- **Null Hypothesis (H₀)**: There is no difference in the mean user rating between Fiction and Non-Fiction books.
- **Alternative Hypothesis (H₁)**: There is a difference in the mean user rating between Fiction and Non-Fiction books.

## Visualizations
### Generated Visualizations
1. **Bar Chart**: Number of Books by Genre
2. **Histogram**: Distribution of User Ratings
3. **Boxplot**: User Ratings by Genre
4. **Pie Chart**: Proportion of Books by Genre
5. **Line Graph**: Average User Rating per Year
6. **Correlation Heatmap**: Numeric Variables (e.g., User Ratings, Reviews, Price)
7. **Bar Chart**: Average Price by Genre
8. **Boxplot**: Distribution of Prices by Genre

These visualizations provide insights into the dataset's structure and trends.

## Statistical Analysis
- **Test Used**: Welch Two-Sample T-Test
- **Results**:
  - **T-Value**: 2.63
  - **P-Value**: 0.0089
  - **Mean User Rating for Fiction**: 4.65
  - **Mean User Rating for Non-Fiction**: 4.60
  - **95% Confidence Interval for Difference in Means**: 0.01 to 0.09
- **Interpretation**: The p-value is less than 0.05, leading to rejection of the null hypothesis. Fiction books have statistically significant higher ratings than Non-Fiction books.

## Tools and Libraries Used
- **R Libraries**:
  - `dplyr`
  - `ggplot2`
  - `reshape2`

## R Code Workflow
### Key Steps
1. Load and clean the dataset.
2. Generate visualizations:
   - Bar charts, histograms, boxplots, heatmaps.
3. Conduct statistical analysis:
   - Welch Two-Sample T-Test to compare means.
4. Interpret results and generate insights.

## Conclusion
The analysis indicates that Fiction books generally have higher user ratings compared to Non-Fiction books. The findings are statistically significant, supporting the hypothesis that genre influences user ratings.

## Future Directions
1. Explore how price impacts ratings.
2. Investigate correlations between reviews and ratings.
3. Analyze temporal trends for specific genres.

## Repository Structure
- `README.md`: Project overview and documentation.
- `Research_Question_Analysis_Extended.docx`: Detailed project report.
- `Research_Question_Analysis_Improved_Presentation.pptx`: Presentation slides.
- R script file: Contains the code for data processing, visualizations, and analysis.
