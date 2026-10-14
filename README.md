# E-Commerce Sales Analytics

## Project Overview

This project analyzes an e-commerce sales dataset to understand revenue performance, purchasing patterns, product categories, regional performance, and operational factors that may influence the customer experience.

The project follows an end-to-end data analytics workflow, using Python and Pandas for data cleaning and preparation, SQL for querying and business analysis, and Power BI for data visualization.

The dataset contains synthetic retail transactions intended to simulate realistic e-commerce activity. The analysis is conducted for learning and portfolio development purposes.

## Business Problem

E-commerce businesses need to understand which products and regions contribute to revenue, how sales vary over time, and whether pricing and operational factors are associated with differences in sales performance and customer ratings.

The objective of this project is to explore these patterns and translate the findings into actionable business insights.

**Primary business question:**

How is the business performing in terms of revenue, and which product, regional, pricing, or operational patterns warrant further investigation?

## Project Objectives

- Assess the quality and structure of the dataset.
- Clean and prepare the data for analysis using Python and Pandas.
- Analyze overall revenue performance and trends over time.
- Compare revenue across product categories, regions, and payment methods.
- Investigate the relationship between discounts and revenue.
- Explore delivery times and customer ratings to identify potential customer-experience patterns.
- Use SQL to answer business questions through filtering, aggregation, grouping, and analytical queries.
- Develop a Power BI dashboard to communicate key findings.
- Provide evidence-based recommendations while acknowledging the limitations of the dataset.

## Dataset

**Dataset name:** E-Commerce Sales Analytics (5,000 Records)

**Source:** Kaggle

**File:** `ecommerce_sales_analytics_5000.csv`

**Records:** 5,000

**Data type:** Synthetic retail transaction data

The dataset description identifies the data as synthetic yet realistic and describes it as containing 15 analytical columns. The working dataset used in this project contains the following 12 columns after the data preparation and inspection performed so far.

| Column | Description |
|---|---|
| `order_id` | Order identifier |
| `order_date` | Date associated with the order |
| `customer_id` | Customer identifier |
| `product_category` | Product category |
| `region` | Geographic region |
| `quantity` | Quantity purchased |
| `unit_price` | Price per unit |
| `discount` | Discount value associated with the transaction |
| `payment_method` | Payment method used |
| `delivery_days` | Delivery duration in days |
| `customer_rating` | Customer rating |
| `revenue` | Recorded revenue for the transaction |

The precise business definitions of `discount` and `revenue`, including the revenue calculation used by the dataset creator, should be verified against the source documentation where possible.

## Tools and Technologies

- **Python:** Data analysis and preparation
- **Pandas:** Data manipulation and cleaning
- **NumPy:** Numerical operations, where required
- **Matplotlib / Seaborn:** Exploratory data visualization, where used
- **SQL:** Business queries and aggregations
- **Power BI:** Dashboard development
- **Git and GitHub:** Version control and project documentation

## Data Cleaning and Preparation

Python and Pandas were used to inspect and prepare the dataset before analysis.

The preparation workflow included:

- Inspecting the dataset's dimensions, column names, and data types.
- Examining missing values and duplicate records.
- Checking data types and converting the order date to a datetime format.
- Exploring numerical distributions and potential outliers.
- Investigating unusually high revenue observations before deciding whether they should be retained.
- Comparing recorded revenue against an assumed calculation based on quantity, unit price, and discount.
- Validating the resulting dataset and preparing it for subsequent analysis.

Potential outliers were investigated rather than automatically removed. High values were not treated as errors solely because they appeared outside conventional statistical thresholds.

The dataset is synthetic and spans 2022–2035. Its regular date pattern is considered when interpreting time-based analysis.

## SQL Analysis

SQL will be used to answer business questions using the prepared dataset.

Planned areas of analysis include:

- Overall revenue and transaction summaries.
- Revenue by year, month, product category, and region.
- Category and regional performance comparisons.
- Payment method distribution.
- Discount and revenue analysis.
- Delivery duration and customer rating analysis.
- Ranking and comparison of categories or regions using more advanced SQL queries.

The results will be documented as the queries are completed and validated.

## Exploratory Data Analysis

Exploratory analysis will examine the distributions and relationships of important business measures, including revenue, quantity, unit price, discount, delivery duration, and customer rating.

The aim is to identify patterns, investigate unusual observations, and develop questions for further analysis without assuming that observed relationships imply causation.

## Power BI Dashboard

A Power BI dashboard will be developed after the initial SQL analysis.

Planned dashboard elements include:

- Key performance indicators for revenue and transaction volume.
- Revenue trends over time.
- Revenue by product category and region.
- Payment method distribution.
- Discount-related analysis.
- Delivery and customer-rating metrics.

The final dashboard layout and KPIs will be determined by the findings and the suitability of the available data.

## Key Findings

*To be completed after SQL analysis and dashboard development.*

This section will summarize the most important findings supported by the analysis, including relevant comparisons, trends, and observations.

## Business Recommendations

*To be completed after the findings have been validated.*

Recommendations will be linked to the observed data patterns and will distinguish between evidence-supported conclusions and areas requiring further investigation.

## Limitations

- The dataset is synthetic and may not represent actual e-commerce customer behavior or business operations.
- The available data does not include product costs, operating expenses, or other cost measures required to calculate profit or profit margin.
- The exact business definitions of revenue and discount should be confirmed where possible.
- The dataset's regular one-record-per-day date pattern may not reflect the transaction frequency of a real online retailer.
- Relationships between discounts, revenue, delivery duration, and customer ratings do not establish causation.
- The available columns do not provide enough information to explain every factor that may influence purchasing decisions or customer satisfaction.

## Project Status

- [x] Initial data inspection
- [x] Data cleaning and preparation
- [x] Preliminary outlier investigation
- [x] Preliminary revenue consistency validation
- [ ] SQL business analysis
- [ ] Exploratory analysis and validated findings
- [ ] Power BI dashboard
- [ ] Final recommendations and project review

## Repository Structure

```text
ecommerce-sales-analytics/
├── README.md
├── data/
│   ├── raw/
│   └── cleaned/
├── notebooks/
│   └── Ecommerce_data_analysis.ipynb
├── sql/
│   ├── 01_basic_queries.sql
│   ├── 02_aggregations.sql
│   ├── 03_business_analysis.sql
│   └── 04_advanced_queries.sql
└── dashboard/
```

*The structure above represents the intended project organization; files can be added as each stage is completed.*

## Conclusion

This project demonstrates an end-to-end approach to data analytics, from data quality assessment and preparation to SQL-based business analysis and dashboard development. The goal is to produce clear, reproducible analysis and communicate insights with appropriate attention to data quality, assumptions, and limitations.