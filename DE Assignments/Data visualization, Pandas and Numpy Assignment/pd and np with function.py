#creating new colums with existing columns using functions.

import numpy as np
import pandas as pd
df=pd.read_csv('LoanData.csv')
print(df)

def fun(a):
    if a>100:
        return "yes"
    else:
        return 'No'
    
df['New column']= df['LoanAmount'].apply(fun)    
print(df)