.PHONY: build run

build:
	docker build -t openbrisk/brisk-runtime-ruby .

run:
	docker run -it \
	-p 8080:8080 \
	-e MODULE_NAME=HelloWorld \
	-e FUNCTION_HANDLER=execute \
	-e FUNCTION_TIMEOUT=10 \
	-v `pwd`/examples:/openbrisk \
	openbrisk/brisk-runtime-ruby