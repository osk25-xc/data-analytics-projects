from pathlib import Path
import pandas as pd
ROOT=Path(__file__).resolve().parents[1]
df=pd.read_csv(ROOT/'data/inventory.csv')
print('SKUs:',df.sku.nunique(),'Inventory value:',df.inventory_value.sum())
print('Stockout rate %:',round(df.stockout.mean()*100,2))
print(df.groupby('warehouse').agg(inventory_value=('inventory_value','sum'),stockout_skus=('stockout','sum'),skus=('sku','count')))
print('Below reorder level:')
print(df[df.stock_on_hand<df.reorder_level][['sku','warehouse','stock_on_hand','reorder_level','monthly_demand']].head(20))
