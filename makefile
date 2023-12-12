build:
	docker build -t detectron .
run:
	docker run -it -d --rm --gpus all --name detectron detectron
attach:
	docker exec -it detectron bash
stop:
	docker container stop detectron