NAME = joffotron/alpine-ruby
VERSION = 3.3

all: build tag_latest

build:
	docker build -t $(NAME):$(VERSION) .

tag_latest:
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

run:
	docker run -it --rm $(NAME):$(VERSION)

clean:
	docker rmi $(NAME):latest
	docker rmi $(NAME):$(VERSION)
