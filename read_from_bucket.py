import boto3
import pandas as pd
import csv
import io
import matplotlib.pyplot as plt

s3 = boto3.resource('s3')

obj = s3.Object('cloudtech-fb03-bochok-oleksandra', 'data.csv')
data=obj.get()['Body'].read()
df = pd.read_csv(io.BytesIO(data), header=0, delimiter=",", low_memory=False)
df.plot(x='date', y=['USD', 'EUR'], figsize=(30,10), title='UAH exchange rate 2021')
plt.show()
plt.savefig('plot.png')
