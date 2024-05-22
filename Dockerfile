# syntax=docker/dockerfile:1

ARG PYTHON_VERSION=3.12.3
FROM python:${PYTHON_VERSION}-slim as base

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV POETRY_HOME=/opt/poetry
ENV POETRY_VIRTUALENVS_CREATE=false

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    apt-transport-https \
    build-essential \
    curl \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-oeux", "pipefail", "-c"]
RUN curl -sSL https://install.python-poetry.org | python - \
    && cd /usr/local/bin \
    && ln -s /opt/poetry/bin/poetry \
    && poetry config virtualenvs.create false

WORKDIR /app

# Development stage
FROM base AS development

COPY pyproject.toml poetry.lock ./
RUN poetry install --no-interaction --no-root

COPY . .

RUN chmod +x /app/docker-entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/app/docker-entrypoint.sh"]
