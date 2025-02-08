# SQL and R Data Analysis Project

## Overview

This project demonstrates a complete workflow for managing and analyzing employee wage data using both SQL and R. The tasks include data insertion, updates, statistical analysis, visualization, and predictive modeling.

## SQL Tasks

1. **Data Management and Updates:**  
   - Employee records were inserted into a database table that includes details such as employee ID, full name, department ID, job role, manager ID, and wages.
   - Wage values were updated based on various conditions. For example, all employees in a specific department had their wages set to a fixed value, and specific job titles (such as those containing "Sales") had custom wage updates.
   - These operations ensured that the data in the underlying tables was maintained accurately, even though a view was used for browsing data.

2. **Working with Views:**  
   - Data was displayed using a view that joins employee and department information for easier inspection.
   - Since views cannot be modified directly in many SQL environments, any data changes were made on the underlying base tables.

## R Tasks

1. **Data Import and Preparation:**  
   - The employee wage data was exported to a CSV file and then read into R to form a data frame.
   - The data from the CSV was verified and printed to ensure a correct import.

2. **Descriptive Statistics:**  
   - Summary statistics were calculated for the wages column. This includes determining the mean, standard deviation, and an overall summary of the wage distribution to understand the central tendency and dispersion.

3. **Statistical Testing:**  
   - A one-sample t-test was performed using a hypothesized mean wage (3000) to assess whether the actual mean wage significantly deviated from that value.
   - The t-test results, including the t-statistic, degrees of freedom, and p-value, were printed out for interpretation.

4. **Visualization:**  
   - A histogram was generated to visualize the distribution of employee wages. This helped in understanding the frequency of wage ranges across the dataset.

5. **Predictive Modeling:**  
   - A simple linear regression model was built to explore if and how wages differed across departments. The department variable was treated as a categorical factor.
   - Using the model, a prediction for an employee's wage in a specific department (department 2) was made to illustrate how such a model can be applied for predictive purposes.

## Conclusion

This project illustrates the synergy between SQL for data management and R for statistical analysis. The SQL component maintained and updated the employee database, while the R component brought out descriptive and inferential statistics, visualization, and basic predictive modeling. This workflow is a practical example of how to integrate SQL and R for comprehensive data analysis within an organization.

Happy analyzing!
 
