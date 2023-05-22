#!/usr/bin/env python3

import urllib.request, json 

with urllib.request.urlopen("https://bank.gov.ua/NBU_Exchange/exchange_site?start=20210101&end=20211231&sort=exchangedate&order=asc&json") as url:
    data = json.loads(url.read().decode('utf-8'))
    
with open('output.json', 'w') as f:
    json.dump(data, f)
