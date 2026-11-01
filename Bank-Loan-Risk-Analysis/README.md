# Bank Loan & Risk Analysis

> Portfolio case study using synthetic loan applications only.

## Objective
Review application volume, approval patterns and credit-risk indicators without presenting the output as a real lending decision.

## Dataset
`data/loans.csv` — 500 generated applications; no real borrower data.

## Business questions
- What is the approval rate by region and loan purpose?
- How do credit-score bands and debt-to-income ratios vary by status?
- What default patterns appear in this illustrative dataset?

## KPIs
Applications, approved loans, approval rate, default count, default rate and average credit score.

## Run
```bash
pip install pandas matplotlib
python python/analysis.py
```
Import as `loans` in PostgreSQL and run the SQL file. DAX starters are included.

**Data note:** all data is synthetic; never use this toy dataset for credit decisions.
