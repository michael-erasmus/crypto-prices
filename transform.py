#!/usr/bin/env python3

import pandas as pd

df_btc = pd.read_csv('./data/prices-btc.csv', index_col='Date')
df_eth = pd.read_csv('./data/prices-eth.csv', index_col='Date')

df_btc['Symbol'] = 'BTC'
df_eth['Symbol'] = 'ETH'

df_all = pd.concat([df_btc,df_eth])

df_all.to_csv('data/prices-all.csv')
