from pathlib import Path
import pandas as pd
ROOT=Path(__file__).resolve().parents[1]
df=pd.read_csv(ROOT/'data/loans.csv')
approved=df[df.loan_status.eq('Approved')]
print('Applications:',len(df),'Approval rate %:',round(len(approved)/len(df)*100,2))
print('Defaults among approved:',int(approved.defaulted.sum()),'Rate %:',round(approved.defaulted.mean()*100,2))
df['score_band']=pd.cut(df.credit_score,[0,579,669,739,900],labels=['Poor','Fair','Good','Very Good'])
print(df.groupby('score_band',observed=False).agg(applications=('loan_id','count'),defaults=('defaulted','sum')))
