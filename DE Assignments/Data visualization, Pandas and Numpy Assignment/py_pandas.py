import pandas as pd

data={'Area(Sq.mts)':[180,225,260,320,335,345,355,400],
    "Roomcount":[5,4,3,6,4,5,3,4],
     'Buildingage':  [10,18,2,10,9,14,0,10],
     "Price(USD)":[510000,508000,548000,650000,658000,632000,680000,725000]}
df=pd.DataFrame(data)    #datframes
se=pd.Series(data)       #series
print(f"Pandas Dataframes:\n\n{df}")
print(f"\n\nPandas Series:\n\n{se}")

