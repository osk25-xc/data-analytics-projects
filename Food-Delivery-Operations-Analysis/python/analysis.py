from pathlib import Path
import pandas as pd
ROOT=Path(__file__).resolve().parents[1]
df=pd.read_csv(ROOT/'data/deliveries.csv')
delivered=df[df.delivery_status.eq('Delivered')]
print('Orders:',len(df),'Delivered:',len(delivered))
print('Average delivery minutes:',round(delivered.actual_time_min.mean(),2))
print('Late delivery rate %:',round(delivered.late_delivery.mean()*100,2))
print(delivered.groupby('city').agg(orders=('delivery_id','count'),avg_time=('actual_time_min','mean'),avg_rating=('rating','mean')).round(2))
