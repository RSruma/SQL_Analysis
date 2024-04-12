/*Create a databse named sales_analysis*/
CREATE DATABASE SALES_ANALYSIS;

/*Show the table diwali_sales_data*/
SELECT * FROM diwali_sales_data;

/*What is the total sales revenue?*/
SELECT sum(amount) AS Total_Sales_Revenue from diwali_sales_data;

/*How many orders were placed in total?*/
Select count(orders) AS Total_Orders_Placed from diwali_sales_data;

/*Which product categories contribute the most to sales revenue?*/
Select COUNT(Age_Group), Gender from diwali_sales_data group by Gender, Age_Group;

/*What is the distribution of customers across different age groups and genders?*/
SELECT State, Zone, SUM(Amount) AS Total_Sales_Revenue from diwali_sales_data GROUP BY State, Zone ORDER BY Total_Sales_Revenue DESC LIMIT 5;

/*What are the top-selling states or zones?*/
SELECT AVG(Age) AS Average_Customers_Age from Diwali_sales_data;

/*How does sales revenue vary across different age groups?*/
SELECT Age_Group, SUM(Amount) AS Total_Sales_Revenue from diwali_sales_data group by Age_Group ORDER BY Age_Group;


