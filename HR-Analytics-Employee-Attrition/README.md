# HR Analytics – Employee Attrition

> Portfolio case study using synthetic employee practice data only.

## Objective
Explore workforce composition, attrition patterns, tenure, satisfaction, overtime and compensation.

## Dataset
`data/employees.csv` — 500 generated employee records. No real employee data.

## Business questions
- Which departments have higher attrition rates?
- How do overtime and job satisfaction relate to attrition?
- How do tenure, role and income vary across the workforce?

## KPIs
Headcount, attrition count, attrition rate, average monthly income and average tenure.

## Run
```bash
pip install pandas matplotlib
python python/analysis.py
```
Import the CSV as `employees` in PostgreSQL and run `sql/analysis.sql`. DAX starters are in `powerbi/measures.dax`.

**Data note:** synthetic data is for learning, not HR decisions.
