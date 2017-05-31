# Cryptocurrencies price Analysis

A super simple analysis of how Bitcoin and Ethereum prices have changed over time, using daily prices from Coindesk.

## Get started
To run a Jupyter Notebook to explore the data, and run the main analysis, run:

```
make notebook
```

This will run all the needed steps to run the main analysis (getting the raw data and transforming it).

The main analysis notebook is at http://0.0.0.0:8888/notebooks/notebooks/Data%20Analysis.ipynb

## Getting the raw data

Data is downloaded in a CSV format from coindesk.com.

To download the data, run:

```bash
make data
```

It will be saved to these files
```
./data/prices-btc.csv
./data/prices-eth.csv
```

We'll also do some slight transformation on the raw data (removing the attribution footer)

## Transformation

To transform the data to a format suitable for analysis, run:

```bash
make transform
```

If needed, this will build the docker image needed to run analysis. This will output to a file:

```
./data/prices-all.csv
```

This file will contain a row for each daily price for each currency, denoted by the `symbol` column.
