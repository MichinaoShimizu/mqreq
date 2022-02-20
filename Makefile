#!/usr/bin/env make

install:
	pip install --upgrade pip
	poetry install
	poetry run pre-commit install

run:
	poetry run start

build:
	poetry build

test:
	poetry run tox

clean:
	@find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf
	@-rm -R dist .tox .mypy_cacche .coverage .venv poetry.lock

update:
	poetry self update
	poetry update

docker-build:
	docker build --tag boilerplate .

docker-run:
	docker run -it boilerplate
