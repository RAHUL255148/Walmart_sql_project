# 🛒 Walmart Sales Data Analysis in MySQL

## 📌 Introduction

This project explores sales data from Walmart with the aim of understanding sales trends, top-performing branches and products, customer behavior, and the effectiveness of sales strategies. The dataset was obtained from the [Kaggle Walmart Sales Forecasting Competition](https://www.kaggle.com/competitions/walmart-recruiting-store-sales-forecasting). It contains transactional data from three Walmart branches located in Mandalay, Yangon, and Naypyitaw.

## 🎯 Project Objectives

- Analyze sales performance across branches and product lines.
- Study customer purchase behavior and preferences.
- Identify peak hours and top-selling categories.
- Understand sales trends to recommend data-driven improvements in strategy.

## 🧾 Dataset Description

The dataset includes 1,000 rows and 17 columns. Key columns include:

| Column Name              | Description                                  |
|--------------------------|----------------------------------------------|
| `invoice_id`             | Unique identifier for each sale              |
| `branch`                 | Branch code (A, B, C)                        |
| `city`                   | City where the branch is located             |
| `customer_type`          | Type of customer (Member/Normal)             |
| `gender`                 | Gender of the customer                       |
| `product_line`           | Category of the product                      |
| `unit_price`             | Price per unit of the product                |
| `quantity`               | Number of units sold                         |
| `VAT`                    | Tax added to the purchase                    |
| `total`                  | Final amount paid by customer                |
| `date`                   | Date of transaction                          |
| `time`                   | Time of transaction                          |
| `payment_method`         | Method of payment (Cash, Credit, Ewallet)    |
| `cogs`                   | Cost of goods sold                           |
| `gross_income`           | Profit earned                                |
| `rating`                 | Customer satisfaction rating (1 to 10)       |

## 📊 KPIs Tracked

- Total Revenue per Month
- Product Line with Highest Sales
- Branch-wise Revenue and Product Sales
- VAT Distribution by City and Customer Type
- Average Customer Rating by Product Line
- Gender and Customer Type Analysis
- Hourly and Daily Sales Performance

## 🔎 Analysis Performed

### 🛍️ Product Analysis

- Identified best and worst performing product lines.
- Analyzed average sales and categorized products as “Good” or “Bad” based on performance.

### 💰 Sales Analysis

- Tracked sales across times of day and days of the week.
- Found highest-grossing branches and peak sales periods.

### 👥 Customer Analysis

- Analyzed customer type (member vs. normal) and their revenue contribution.
- Studied gender distribution and purchase behavior by branch and time.
- Calculated customer ratings and their variation by time and branch.

## ⚙️ Approach

### 1. Data Wrangling

- Checked and handled missing values.
- Ensured data quality by using `NOT NULL` constraints while importing into MySQL.

### 2. Feature Engineering

- Created `time_of_day` (Morning, Afternoon, Evening) column.
- Extracted `day_name` and `month_name` for weekday and monthly trends.

### 3. Database Creation

- Created normalized tables in MySQL.
- Imported data into the tables using structured SQL queries.

### 4. Exploratory Data Analysis (EDA)

- Conducted multiple SQL queries to answer business questions.
- Visualized results using charts and pivot tables where necessary.

## 📈 Business Questions Answered

- Which product line has the highest sales and ratings?
- What is the most common payment method?
- Which city and branch generate the most revenue?
- What time of day sees the most customer engagement?
- Which customer type is the most profitable?
- What day of the week receives the best customer ratings?

## 📐 Revenue and Profit Calculations

- **COGS** = `unit_price × quantity`
- **VAT** = `5% of COGS`
- **Total Revenue** = `COGS + VAT`
- **Gross Profit** = `Total - COGS`
- **Gross Margin %** = `(Gross Income / Total Revenue) × 100`

> **Example Calculation**  
> Unit Price = 45.79, Quantity = 7  
> COGS = 45.79 × 7 = 320.53  
> VAT = 5% × 320.53 = 16.03  
> Total = 320.53 + 16.03 = 336.56  
> Gross Margin % = (16.03 / 336.56) ≈ **4.76%**

## ✅ Conclusion

This project successfully demonstrates how MySQL can be used to extract meaningful business insights from raw transactional data. By combining SQL queries with domain understanding, we answered key business questions about customer behavior, product performance, and sales strategies. The project also shows how feature engineering and structured querying can drive decisions in a retail environment.

---

## 🔗 View Project

[Click here to view the GitHub Repository](https://github.com/RAHUL255148/Walmart_sql_project)
