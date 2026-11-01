from pathlib import Path
import pandas as pd
ROOT=Path(__file__).resolve().parents[1]
df=pd.read_csv(ROOT/'data/orders.csv')
print('Rows:',len(df),'Missing:',df.isna().sum().sum())
print('Revenue:',round(df.revenue.sum(),2),'Profit:',round((df.revenue-df.cost).sum(),2))
print('AOV:',round(df.revenue.mean(),2))
print(df.groupby('category').agg(orders=('order_id','count'),revenue=('revenue','sum')).sort_values('revenue',ascending=False))
