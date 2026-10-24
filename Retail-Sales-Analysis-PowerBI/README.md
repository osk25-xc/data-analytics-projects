# Retail Sales Analysis — Power BI

## Overview
An interactive retail sales dashboard built in Microsoft Power BI to explore sales, profit, orders, margins, category performance, regional performance, top products, and discount distribution.

## Dashboard Features
- KPI cards: Total Orders, Total Sales, Total Profit, Total Margin
- Sales trend by month/day
- Sales by category and region
- Top 10 products by sales
- Discount distribution by category
- Month slicer for interactive filtering

## Dataset
The project dataset includes fields such as Order Date, Order ID, Category, City, Cost, Customer ID, Customer Segment, Discount, Payment Method, Product, Profit, Quantity, Region, Sales Channel, Sales, and Unit Price.

## DAX Measures
```DAX
Total Sales = SUM('Retail_Sales_Analysis_Dataset'[Sales])
Total Profit = SUM('Retail_Sales_Analysis_Dataset'[Profit])
Total Orders = DISTINCTCOUNT('Retail_Sales_Analysis_Dataset'[Order ID])
Total Margin % = DIVIDE([Total Profit], [Total Sales], 0)
```

## Files
Upload the `.pbix` Power BI report and the CSV/XLSX dataset alongside this README to make the project reproducible.

## Tools
Microsoft Power BI Desktop, Power Query, DAX, Excel, CSV.
