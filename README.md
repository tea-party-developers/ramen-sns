# ramen-sns

[![python](https://img.shields.io/badge/Python-3.12-3776AB.svg?style=flat&logo=python&logoColor=white)](https://www.python.org)

Ramen SNS Application

## 1. Table of Contents

- [1. Table of Contents](#1-table-of-contents)
- [2. About This Repository](#2-about-this-repository)
- [3. Usage](#3-usage)

  - [a. Install Docker](#a-install-docker)
  - [b. Clone Repository](#b-clone-repository)
  - [c. Run servers](#c-run-servers)
  - [d. Check Server](#d-check-server)

- [4. Setup Development Environment Using Dev Containers](#4-setup-development-environment-using-dev-containers)

  - [a. Install Extension](#a-install-extension)
  - [b. Build Dev Containers](#b-build-dev-containers)
  - [c. Check Server](#c-check-server)

- [5. Scripts](#5-scripts)

## 2. About This Repository

This is a repository for Ramen SNS Application created with [Django](https://www.djangoproject.com/).

## 3. Usage

If using VSCode, proceed to step [4. Setup Development Environment Using Dev Containers](#4-setup-development-environment-using-dev-containers).

### a. Install Docker

Download and install Docker Desktop from the [Docker official website](https://www.docker.com/products/docker-desktop/).

### b. Clone Repository

[Clone this repository](https://github.com/kohdice/ramen-api)
to your development machine and create a local repository

### c. Run Servers

Execute the following command.

```bash
docker compose up --build
```

### d. Check Server

If you can access [localhost:8000](http://localhost:8000/), the environment setup is complete.

## 4. Setup Development Environment Using Dev Containers

Only perform this step if you are using VSCode.

### a. Install Extension

Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
extension in VSCode.

### b. Build Dev Containers

Click on the icon resembling `><` at the lower-left corner
of VSCode and select `Reopen in Container`.

### c. Check Server

If you can access [localhost:8000](http://localhost:8000/), the environment setup is complete.

## 5. Scripts

Run the following commands in the Docker container.

- Run tests (Testing by pytest)

```bash
task test
```

- Run formatters (Formatting by ruff)

```bash
task fmt
```

- Run linters (Static code analysis by ruff and mypy)

```bash
task lint
```
