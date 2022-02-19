# boilerplate.poetry.py

[![Python CI](https://github.com/MichinaoShimizu/boilerplate.poetry.py/actions/workflows/python-package.yml/badge.svg)](https://github.com/MichinaoShimizu/boilerplate.poetry.py/actions/workflows/python-package.yml)

## pyenv install

```bash
./script/pyenv.sh
source ~/.bash_profile
```

## install

```bash
poetry install
```

## setup precommit hook

```bash
poetry run pre-commit install
```

## build

```bash
poetry build
```

## test

```bash
poetry run tox
```

## clean

```bash
find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf
rm -R dist .tox .mypy_cacche .coverage .venv poetry.lock
```

## update

```bash
poetry update
```

## self update

```bash
poetry self update
```
