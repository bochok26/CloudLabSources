#!/usr/bin/env python3

import pandas as pd
import matplotlib.pyplot as plt
import sys


def plot(file):
	data = pd.read_json(file)
	df = pd.DataFrame({"date": data[data['cc'] == "USD"]['exchangedate'].values, 
			   "USD": data[data['cc'] == "USD"]['rate'].values,
			   "EUR": data[data['cc'] == "EUR"]['rate'].values})
	df.to_csv(sys.argv[2], index=False)
	
	
plot(sys.argv[1])
