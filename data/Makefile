all: prices-btc.csv prices-eth.csv

prices-btc.csv:
	curl -s 'http://api.coindesk.com/charts/data?output=csv&data=close&index=USD&startdate=2010-07-17&enddate=2017-05-30&exchanges=bpi&dev=1' | sed -e :a -e '$d;N;2,3ba' -e 'P;D' > prices-btc.csv

prices-eth.csv:
	curl -s 'http://api.coindesk.com/charts/data?output=csv&data=close&index=ETH&startdate=2015-08-31&enddate=2017-05-30&exchanges=bpi&dev=1' | sed -e :a -e '$d;N;2,3ba' -e 'P;D' > prices-eth.csv
