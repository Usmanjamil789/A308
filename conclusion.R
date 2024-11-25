# Perform a t-test to compare mean user ratings between Fiction and Non-Fiction books
t_test_result <- t.test(user.rating ~ genre, data = books)

# Display the t-test result
print(t_test_result)

# Extracting important values for reporting
t_value <- t_test_result$statistic
p_value <- t_test_result$p.value
mean_fiction <- t_test_result$estimate[1]
mean_nonfiction <- t_test_result$estimate[2]
confidence_interval <- t_test_result$conf.int

# Format and print the results
cat("T-Test Results:\n")
cat("T-Value:", round(t_value, 2), "\n")
cat("P-Value:", round(p_value, 4), "\n")
cat("Mean User Rating for Fiction:", round(mean_fiction, 2), "\n")
cat("Mean User Rating for Non-Fiction:", round(mean_nonfiction, 2), "\n")
cat("95% Confidence Interval for Difference in Means:", 
    round(confidence_interval[1], 2), "to", round(confidence_interval[2], 2), "\n")
