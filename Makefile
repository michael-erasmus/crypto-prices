NAME = michaelerasmus/crypto-prices

.PHONY: data build

data:
	cd data && $(MAKE)

build:
	docker build -t $(NAME) .

transform: build
	docker run -v $(PWD):/usr/src/app -it --rm $(NAME) ./transform.py
