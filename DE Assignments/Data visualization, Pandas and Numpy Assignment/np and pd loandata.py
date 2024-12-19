import numpy as np
import pandas as pd

df=pd.read_csv('LoanData.csv')
print(df)
print(df.columns)
 
print(df.head())  # Shows the first 5 rows by default.
 
print(df.tail())  # Shows the last 5 rows by default.
 
df.info()        # Shows columns, data types, and non-null counts.
        
print(" Description:", "\n" ,df.describe())  # Shows count, mean, std, min, max for numerical column


print(df.dropna())

print(df.count())
 
print(df.isnull())
print(df.sort_values(by="ApplicantIncome", ascending=True).head())
 
