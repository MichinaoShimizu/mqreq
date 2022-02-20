FROM python:3.8-slim as builder
WORKDIR /usr/src/app
RUN python -m pip install --upgrade pip
RUN pip install poetry
COPY pyproject.toml poetry.lock ./
RUN poetry export -f requirements.txt > requirements.txt

FROM python:3.8-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app
RUN python -m pip install --upgrade pip
COPY --from=builder /usr/src/app/requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "-m", "src"]
