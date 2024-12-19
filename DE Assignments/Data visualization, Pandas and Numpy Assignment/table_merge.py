
import pandas as pd
v1={'id':[1,2,3,4],
    "First_name":["a","b","c","d"]}
pd1=pd.DataFrame(v1)
print(pd1)

v2={'id':[1,2,7,4],
    "last_name":["l","m","n","o"]}
pd2=pd.DataFrame(v2)
print(pd2)

df_inner=pd.merge(pd1,pd2, on='id', how='inner')   #inner join
print("\nInner join:\n",df_inner)

df_outer=pd.merge(pd1,pd2, on='id', how='outer')   #outer join
print("\nouter join:\n",df_outer)

df_left=pd.merge(pd1,pd2, on='id', how='left')   #left join
print("\nleft join:\n",df_left)

df_right=pd.merge(pd1,pd2, on='id', how='right')   #right join
print("\nright join:\n",df_right)

 
