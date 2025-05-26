CREATE DATABASE sql_project_p2
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
                 (
                     transactions_id INT PRIMARY KEY,   
					 sale_date	DATE,
					 sale_time TIME,
					 customer_id INT,	
					 gender VARCHAR(15),
					 age INT,	
					 category VARCHAR(15),
					 quantity	INT,
					 price_per_unit FLOAT,
					 cogs	FLOAT,
					 total_sale FLOAT

                  );
SELECT *FROM retail_sales
LIMIT 10

SELECT 
    COUNT(*)
FROM retail_sales	
	
--data cleaninig--

SELECT *FROM retail_sales
WHERE 
      transactions_id IS NULL
      OR
	  sale_date IS NULL
	  OR
	  sale_time IS NULL
	  OR
	  customer_id IS NULL
	  OR
	  gender IS NULL
	  OR
	  category IS NULL
	  OR
	  quantity IS NULL
	  OR
	  cogs IS NULL
	  OR
	  total_sale IS NULL

--data exploration--
--How many sales do we have
SELECT COUNT(*) as total_sale FROM retail_sales
--How many customers do we have
SELECT COUNT(DISTINCT customer_id) as total_sale FROM retail_sales
--How many UNIQUE customers do we have
SELECT DISTINCT customer_id FROM retail_sales

SELECT DISTINCT category FROM retail_sales
--Data analysis and business key problem and answer

--Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'
 SELECT *
 FROM retail_sales
 WHERE sale_date ='2022-11-05';


--Q.2 Write a SQL query to retrieve all transactions where the category is Clothing and the quantity sold is more than 10 in the month of November 2022  

SELECT *
FROM retail_sales
WHERE
     category = 'Clothing'
	 AND
	 To_CHAR(sale_date, 'YYYY-MM')='2022-11'
	 AND
	 quantity >= 4
	

--Q.3 Write a SQL query to calculate the total sales (total_sales) for each category.
SELECT
     category,
	 SUM(total_sale) as net_sale
FROM retail_sales
GROUP BY 1

--Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
SELECT
     ROUND(AVG(age), 2) as avg_age
FROM retail_sales
WHERE category ='Beauty'

--Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

SELECT *FROM retail_sales
WHERE total_sale >1000


--Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each greater in each category.

SELECT
     category,
	 gender,
	 COUNT(*)as total_trans
FROM retail_sales
GROUP
   BY 
   category,
   gender
ORDER BY 1   

--End of the project

	 


