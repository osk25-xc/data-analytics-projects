# Food Delivery – Operations & Performance Analysis

> Portfolio case study using synthetic order and delivery data only.

## Objective
Track order volume, delivery speed, lateness, ratings and average order value across cities and cuisines.

## Dataset
`data/deliveries.csv` — 500 generated delivery records; no real customer or restaurant data.

## Business questions
- Which cities and cuisines have higher order volume?
- What are average delivery time and late-delivery rate?
- How do ratings and order value vary by cuisine?
- Which restaurants show strong service indicators?

## KPIs
Orders, delivered orders, on-time rate, average delivery time, average rating and AOV.

## Run
```bash
pip install pandas matplotlib
python python/analysis.py
```
Import as `deliveries` in PostgreSQL and run SQL. DAX starter measures included.

**Data note:** synthetic records are illustrative, not a real service-level assessment.
