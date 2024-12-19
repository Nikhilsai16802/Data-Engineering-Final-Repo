from matplotlib import pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
import warnings

x=[5,2,7]
y=[2,16,4]
plt.plot(x,y)
plt.title('Info')
plt.xlabel('X-Axis')
plt.ylabel('Y-Axis')
plt.show() 
df=pd.read_csv('LoanData.csv')

plt.style.use('fivethirtyeight')
plt.rcParams['figure.figsize'] = (15,5)
 
plt.subplot(1,3,1)
sns.boxplot(df['ApplicantIncome'])
 
plt.subplot(1,3,2)
sns.boxplot(df['CoapplicantIncome'])
 
plt.subplot(1,3,3)
sns.boxplot(df['LoanAmount'])
 
plt.suptitle('Outliers Detection')
plt.show()
 

