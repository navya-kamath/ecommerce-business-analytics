# E-commerce Business Analytics

## 1. Business Problem

This project aims to evaluate e-commerce sales performance across product categories, regions, and time. It will investigate revenue patterns and explore how discounts, delivery times, and customer ratings relate to business performance and customer experience.

**Key business question:** How is the business performing in terms of revenue, and which product, regional, pricing, or operational patterns require further investigation?

**Note:** The current dataset does not contain explicit cost or expense information. Therefore, actual profitability cannot be established without additional data.

## 2. Project Objectives

### 2.1 Descriptive Analysis

1. Analyze total revenue by region.
2. Compare revenue across product categories.
3. Examine revenue trends over time.
4. Analyze monthly revenue by product category to investigate changes in demand.
5. Examine payment method distribution.
6. Compare customer ratings across product categories.
7. Investigate the relationship between discounts and revenue.
8. Explore the relationship between delivery times and customer ratings.

### 2.2 Statistical / Inferential Analysis

Potential investigations:
- Test whether average customer ratings differ across product categories.
- Investigate whether customer ratings vary with delivery time.
- Evaluate whether observed differences are statistically meaningful, subject to appropriate assumptions and sample sizes.

### 2.3 Machine Learning

A machine learning model will only be developed if a clear business problem, suitable target variable, and sufficient data are identified.

## 3. Dataset

- **Dataset:** E-commerce sales dataset
- **Source:** To be documented
- **Number of records:** To be verified
- **Number of columns:** 12, as currently identified

### Columns

- `order_id`
- `order_date`
- `customer_id`
- `product_category`
- `region`
- `quantity`
- `unit_price`
- `discount`
- `payment_method`
- `delivery_days`
- `customer_rating`
- `revenue`

## 4. Data Quality and Cleaning

This section will document:
- Missing values and their treatment
- Duplicate records and identifier validation
- Data type and format corrections
- Invalid or unusual values
- Validation of revenue calculations
- Assumptions made during cleaning

The raw dataset will be preserved separately from the cleaned dataset.

## 5. SQL Analysis

SQL will be used to explore the dataset, aggregate revenue, compare categories and regions, analyze trends, and answer business questions.

Queries will be documented in the `sql/` directory.

## 6. Statistical Analysis

This section will describe the statistical methods used, the hypotheses investigated, the results, and the assumptions and limitations of the analysis.

## 7. Power BI Dashboard

The dashboard will summarize key performance indicators, revenue trends, regional and category comparisons, and relevant customer experience metrics.

## 8. Key Findings

Findings will include quantified results, relevant comparisons, and interpretations supported by the data.

## 9. Business Recommendations

Recommendations will identify potential actions, supporting evidence, expected benefits where measurable, and limitations.

## 10. Limitations

- Profitability cannot be calculated reliably without cost and expense data.
- The dataset's source, time coverage, and data quality require verification.
- The meaning and calculation of the discount and revenue fields must be confirmed.
- Findings will be limited to the information available in the dataset.

## 11. Tools and Technologies

- Python and Pandas
- SQL
- Power BI
- Statistical analysis
- Git and GitHub

## 12. Project Status

Currently defining the business problem and profiling the dataset. Analysis, cleaning, and dashboard development will be documented as the project progresses.
