----------------------------------- Generic Question ---------------------------------------------

-- question 1 ---
--- How many unique cities does the data have?--
select distinct city
from sales;

-- question 2 ----
-- In which city is each branch?--
select distinct branch
from sales;

select distinct city, branch
from sales;

------------------------------------- product questions -------------------------------------
-- How many unique product lines does the data have?
select count(distinct product_line)
from sales;

-- What is the most common payment method?
select payment_method,
count(payment_method)
from sales
group by payment_method;

-- What is the most selling product line?
select product_line,
count(product_line) as cnt
from sales
group by product_line
order by  cnt desc;

-- What is the total revenue by month?
select month_name as month, sum(total) as total_revenue
from sales
group by month_name
order by total_revenue desc;

-- What month had the largest COGS?
select month_name as month, sum(cogs) as cogs
from sales
group by month_name
order by Cogs desc;

-- What product line had the largest revenue?
select product_line, sum(total) as total_revenue
from sales
group by product_line
order by total_revenue desc;

-- What is the city with the largest revenue?
select city,branch, sum(total) as total_revenue
from sales
group by city, branch
order by total_revenue desc;

-- What product line had the largest VAT?
select product_line,avg(VAT) as avg_tax
from sales
group by product_line
order by avg_tax desc;

-- Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales
SELECT 
	AVG(quantity) AS avg_qnty
FROM sales;

SELECT
	product_line,
	CASE
		WHEN AVG(quantity) > 6 THEN "Good"
        ELSE "Bad"
    END AS remark
FROM sales
GROUP BY product_line;

-- Which branch sold more products than average product sold?
select branch, sum(quantity) as qty
from sales
group by branch
having sum(quantity) > (select avg(quantity) from sales);

-- What is the most common product line by gender?
select gender, product_line, count(gender) as total_cnt
from sales 
group by gender, product_line
order by total_cnt desc;

-- What is the average rating of each product line?
select round(avg(rating),2) as avg_rating,
product_line
from sales
group by product_line
order by avg_rating desc;

--------------------------------------------------- sales questions---------------------------------------------------
-- Number of sales made in each time of the day per weekday
select time_of_day,count(*) as total_sales
from sales 
group by time_of_day;

-- Which of the customer types brings the most revenue?
SELECT
	customer_type,
	SUM(total) AS total_revenue
FROM sales
GROUP BY customer_type
ORDER BY total_revenue;

-- Which city has the largest tax percent/ VAT (Value Added Tax)?
SELECT
	city,
    ROUND(AVG(VAT), 2) AS avg_tax_pct
FROM sales
GROUP BY city 
ORDER BY avg_tax_pct DESC;

-- Which customer type pays the most in VAT?
SELECT
	customer_type,
	AVG(VAT) AS total_tax
FROM sales
GROUP BY customer_type
ORDER BY total_tax;

-------------------------------------------------------- customers--------------------------------------------
-- How many unique customer types does the data have?
SELECT
	DISTINCT customer_type
FROM sales; 

-- How many unique payment methods does the data have?
SELECT
	DISTINCT payment_method
FROM sales; 

--  What is the most common customer type?
SELECT
	customer_type,
	count(*) as count
FROM sales
GROUP BY customer_type
ORDER BY count DESC;

-- Which customer type buys the most?
SELECT
	customer_type,
    COUNT(*)
FROM sales
GROUP BY customer_type;

-- What is the gender of most of the customers?
SELECT
	gender,
	COUNT(*) as gender_cnt
FROM sales
GROUP BY gender
ORDER BY gender_cnt DESC;

-- What is the gender distribution per branch?
select gender,COUNT(*) as gender_cnt
FROM sales
WHERE branch = "C"
GROUP BY gender
ORDER BY gender_cnt DESC; 

-- Which time of the day do customers give most ratings?
SELECT
	time_of_day,
	AVG(rating) AS avg_rating
FROM sales
GROUP BY time_of_day
ORDER BY avg_rating DESC; 

-- Which time of the day do customers give most ratings per branch?
SELECT
	time_of_day,
	AVG(rating) AS avg_rating
FROM sales
WHERE branch = "A"
GROUP BY time_of_day
ORDER BY avg_rating DESC;

-- Which day fo the week has the best avg ratings?
SELECT
	day_name,
	AVG(rating) AS avg_rating
FROM sales
GROUP BY day_name 
ORDER BY avg_rating DESC; 

-- Which day of the week has the best average ratings per branch?
SELECT 
	day_name,
	COUNT(day_name) total_sales
FROM sales
WHERE branch = "C"
GROUP BY day_name
ORDER BY total_sales DESC; 