#!/usr/bin/env make

.PHONY: $(shell egrep -o ^[a-zA-Z_-]+: $(MAKEFILE_LIST) | sed 's/://')

init:
	./script/pyenv.sh
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
	poetry run pre-commit install

build:
	poetry build

install:
	poetry install

test: update
	poetry run tox

update:
	poetry update

update-dry:
	poetry update --dry-run

login:
	poetry shell

poetry-self-update:
	poetry self update

clean:
	-rm -R dist .mypy_cache .tox
