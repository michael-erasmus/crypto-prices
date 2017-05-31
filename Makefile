NAME = michaelerasmus/crypto-prices

.PHONY: data build

data:
	cd data && $(MAKE)

build:
	docker build -t $(NAME) .

transform: build data
	docker run -v $(PWD):/work -it --rm $(NAME) ./transform.py

notebook: transform
	docker run -p 8888:8888 -v $(PWD):/work -it --rm $(NAME)
