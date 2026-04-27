# E-Commerce Sales Analysis

A data analysis project where I explored a real UK-based online retail dataset to understand revenue trends, top-selling products, and customer geography.

---

## Why I Did This Project

I'm currently learning data analytics and wanted to work with a real dataset instead of just doing tutorials. E-commerce felt like a practical domain since almost every company sells something online. This project helped me understand what it actually means to clean messy data and turn raw numbers into something useful.

---

## Dataset

- Source: UCI Machine Learning Repository (via Kaggle)
- Link: https://www.kaggle.com/datasets/carrie1/ecommerce-data
- Size: 541,909 transactions from a UK-based online retailer (2010-2011)
- Columns: InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country

---

## What I Found

Monthly Revenue Trends
- Revenue was fairly flat for the first half of 2011
- There was a sharp spike from September to November - November 2011 was the strongest month at 1,161,817 pounds
- This is classic seasonal behaviour driven by Christmas shopping

Top Products
- Paper Craft Little Birdie was the highest earning product at 168,469 pounds
- Most top sellers were decorative and handmade style items
- Interestingly, "POSTAGE" and "Manual" appeared in the top 10 - these are not real products and would need to be flagged and excluded in a more detailed analysis

Revenue by Country
- UK accounted for the vast majority of revenue - this is clearly a UK-focused business
- Netherlands, Ireland, and Germany were the next biggest markets
- Australia appeared at number 6 which was unexpected for a UK retailer

---

## Data Cleaning Steps

The raw data had a few problems I had to fix before analysing:

- 135,080 rows had no CustomerID - removed these since they couldn't be used for customer analysis
- Negative quantities represented returns and cancellations - removed to focus on actual sales
- Negative prices were data entry errors - removed
- After cleaning, 397,884 rows remained out of the original 541,909

---

## Tools Used

- Python 3
- Pandas
- NumPy
- Matplotlib
- Jupyter Notebook

---

## How to Run This

1. Download the dataset from the Kaggle link above and save it as data.csv
2. Open ecommerce_analysis.ipynb in Jupyter Notebook
3. Run all cells in order

---

## What I Learned

This was my first end-to-end data project and it was a good reminder that real data is never clean. I spent more time fixing the data than actually analysing it, which I've heard is pretty normal. The seasonal revenue trend was the most interesting finding - it's the kind of thing a business could actually use to plan inventory and marketing budgets ahead of Q4.

---

## Next Steps

I'm planning to extend this project with:
- RFM Analysis (Recency, Frequency, Monetary) to segment customers
- A proper Power BI dashboard on top of this data
- SQL-based analysis in MySQL for customer behaviour patterns


Dataset source: UCI E-Commerce Dataset from Kaggle
Link: https://www.kaggle.com/datasets/carrie1/ecommerce-data
