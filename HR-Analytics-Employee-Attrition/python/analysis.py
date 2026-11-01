from pathlib import Path
import pandas as pd
ROOT=Path(__file__).resolve().parents[1]
df=pd.read_csv(ROOT/'data/employees.csv')
print('Headcount:',df.employee_id.nunique(),'Attrition rate %:',round(df.attrition.mean()*100,2))
print(df.groupby('department').agg(headcount=('employee_id','count'),attrition_rate=('attrition','mean')).assign(attrition_rate_pct=lambda x:x.attrition_rate*100).drop(columns='attrition_rate').sort_values('attrition_rate_pct',ascending=False))
print(df.groupby(['overtime','job_satisfaction']).attrition.mean().round(3))
