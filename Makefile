#!/usr/bin/env make

PYTHON_VERSION := 3.9.10
SRC := $(CURDIR)/src
DISTS := dist .tox .mypy_cache .coverage .venv poetry.lock

.PHONY: all
all: build

.PHONY: build
build:
	poetry build

.PHONY: install
install:
	poetry install
	poetry env use $(PYTHON_VERSION)
	poetry run pre-commit install

.PHONY: run
run:
	poetry run start

.PHONY: test
test:
	poetry run tox

.PHONY: clean
clean:
	@find $(SRC) | grep -E "(__pycache__|\.pyc|\.pyo$$)" | xargs rm -rf
	@-rm -rf $(DISTS)

.PHONY: update
update:
	python -m pip install --upgrade pip
	poetry self update
	poetry update

.PHONY: version
version:
	python -V
	poetry run python -V
	poetry version
