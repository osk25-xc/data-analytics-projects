# Supply Chain & Inventory MIS

> Portfolio case study using synthetic inventory snapshots only.

## Objective
Monitor inventory value, replenishment needs, stockout exposure, demand and supplier lead times.

## Dataset
`data/inventory.csv` — 500 generated SKU snapshots; no real supplier data.

## Business questions
- Which warehouses hold the most inventory value?
- Which SKUs are below reorder level?
- How do demand and supplier lead times vary by category?
- Where are stockout indicators concentrated?

## KPIs
SKU count, inventory value, stockout SKUs, stockout rate, units sold and average lead time.

## Run
```bash
pip install pandas matplotlib
python python/analysis.py
```
Import the CSV as `inventory` in PostgreSQL and run the SQL queries. DAX starters included.

**Data note:** synthetic data is illustrative; reorder policies require real demand and lead-time validation.
