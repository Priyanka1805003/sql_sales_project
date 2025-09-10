# Retail Sales SQL Project

This project focuses on data cleaning, exploration, and analysis of a fictional retail sales dataset using SQL. It demonstrates how to query and analyze sales data to extract business insights that could be valuable for decision-making in retail environments.

# 📂 Project Structure
sql_retail_sales.sql: 

Main SQL script that:

Creates and sets up the retail_sales table.

Performs data cleaning by checking for nulls.

Conducts exploratory data analysis (EDA).

Answers key business questions using SQL queries.

# 🧮 Dataset Overview
The dataset includes the following columns:

transactions_id (INT): Unique ID for each transaction

sale_date (DATE): Date of the sale

sale_time (TIME): Time of the sale

customer_id (INT): Unique customer identifier

gender (VARCHAR): Gender of the customer

age (INT): Age of the customer

category (VARCHAR): Product category

quantity (INT): Units sold

price_per_unit (FLOAT): Price per unit item

cogs (FLOAT): Cost of goods sold

total_sale (FLOAT): Total sale value

# 🔍 Key Business Questions Answered
Sales on a Specific Date

Retrieve all sales made on 2022-11-05.

Category-Based Filtering

Transactions in the Clothing category with quantity sold greater than 10 in November 2022.

Sales Summary

Total sales grouped by product category.

Customer Demographics

Average age of customers who bought products from the Beauty category.

High-Value Transactions

Transactions where total_sale exceeds $1000.

Gender-Based Transaction Count

Number of transactions by gender within each product category.

# 🛠 How to Use
Load the SQL script in your database management tool (e.g., PostgreSQL, MySQL, SQLite).

Run the statements sequentially to:

Create the schema and table.

Populate or simulate data if available.

Execute analysis queries.

# ⚠️ Note: 
The actual dataset isn't included in the script. You may need to insert sample data to see results.

📈 Future Improvements
Integrate with a frontend BI tool for visualization (e.g., Power BI, Tableau).

Enhance data model with additional features like promotions, location, and payment method.

Include performance optimization (indexes, partitions).

📃 License
This project is open-source and available under the MIT License.

