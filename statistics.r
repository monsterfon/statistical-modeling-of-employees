# Load necessary libraries
if (!require(dplyr)) {
  install.packages("dplyr")
  library(dplyr)
}
if (!require(ggplot2)) {
  install.packages("ggplot2")
  library(ggplot2)
}

# Define employee data including wages (using your provided CSV data)
employee_data <- read.csv("results.csv", header = TRUE, stringsAsFactors = FALSE)
# Print the data to the console
print(results)

# ---------------------------
# Descriptive Statistics
# ---------------------------
# Compute summary statistics for wages
wage_summary <- summary(employee_data$wages)
print("Summary statistics for wages:")
print(wage_summary)

# Calculate standard deviation
wage_sd <- sd(employee_data$wages)
cat("Standard Deviation of wages:", wage_sd, "\n")

# Calculate the mean of wages (adjust the column name if needed)
mean_wages <- mean(results$wages, na.rm = TRUE)
print(mean_wages)

# Using t.test() (hypothesized mean of 3000)
t_test_result <- t.test(results$wages, mu = 3000)
print(t_test_result)

# ---------------------------
# Visualization: Histogram of Wages
# ---------------------------
ggplot(employee_data, aes(x = wages)) +
  geom_histogram(binwidth = 1000, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Employee Wages",
       x = "Wages",
       y = "Frequency")

# ---------------------------
# Simple Linear Model Example
# ---------------------------
# Explore if wages differ by department (treated as a factor)
employee_data$department_id <- as.factor(employee_data$department_id)
lm_model <- lm(wages ~ department_id, data = employee_data)
print("Linear model summary:")
print(summary(lm_model))

# ---------------------------
# Example Prediction using Linear Model
# ---------------------------
# Predict wages for an employee in department 2
new_data <- data.frame(department_id = factor(2, levels = levels(employee_data$department_id)))
predicted_wage <- predict(lm_model, newdata = new_data)
cat("Predicted wage for department 2:", predicted_wage, "\n")