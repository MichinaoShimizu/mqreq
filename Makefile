#!/usr/bin/env make

init:
	./script/init.sh

build:
	poetry build

install:
	poetry install

test:
	poetry run tox

update:
	poetry update

update-dry:
	poetry update --dry-run

login:
	poetry shell

poetry-self-update:
	poetry self update
