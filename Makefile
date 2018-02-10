.PHONY: build run

build:
	docker build -t openbrisk/brisk-runtime-ruby .

run:
	docker run -it \
	-p 8080:8080 \
	openbrisk/brisk-runtime-ruby