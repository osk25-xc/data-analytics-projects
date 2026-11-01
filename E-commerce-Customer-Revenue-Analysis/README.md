# E-commerce Customer & Revenue Analysis

> Portfolio case study using synthetic practice data only.

## Objective
Understand revenue drivers, customer purchasing patterns, profitability, discount impact and returns.

## Dataset
See `data/orders.csv` (500 generated order records; synthetic, not real customer data).

## Tools
Python (pandas), PostgreSQL SQL, Power BI DAX and Excel PivotTables.

## Business questions
- Which regions and categories contribute most revenue and profit?
- What is average order value (AOV)?
- Which customers are repeat buyers?
- How do discounts and returns vary by segment?

## KPI definitions
- Revenue = sum of net order revenue.
- Profit = revenue less cost.
- AOV = revenue / distinct orders.
- Return rate = returned orders / total orders.

## Run
```bash
pip install pandas matplotlib
python python/analysis.py
```

Run `sql/analysis.sql` in PostgreSQL after importing the CSV as `orders`. Power BI starter measures are in `powerbi/measures.dax`.

**Data note:** generated data is illustrative; validate business definitions before decisions.
