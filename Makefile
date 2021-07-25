SHELL := /bin/bash
export FLASK_APP := run.py

install-local:
	source .venv/bin/activate
	pip install -r requirements.txt

run-local:
	flask run

build-docker:
	docker build -t flask .

run-docker:
	docker run -it --rm -p 5000:5000  flask

docker: build-docker run-docker

