<h1 align="center">
    Legal Document Search ⚖️📚🔍
</h1>

<p align="center">
</p>

This project enables collaborative sharing and search of legal documents within your private cloud deployment on Azure. Built for law firms, corporate legal departments, and organizations handling sensitive legal information, it ensures secure data management and seamless collaboration. With advanced search, version control, and user access controls, legal professionals can quickly find relevant documents, track changes, and maintain data integrity.

> Please note this project is WIP

# Getting Started

### Developer Requirements

* Python
* [Poetry](https://python-poetry.org/)
* [PyEnv](https://github.com/pyenv/pyenv)
* [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
* [Docker](https://docs.docker.com/engine/install/)
* [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/)
* [Azure Account](https://azure.microsoft.com/en-gb)

**Setup**

Use PyEnv to install the correct Python version:

```bash
pyenv install 3.10.5
pyenv local 3.10.5
```

Set up Poetry:

```bash
poetry env use 3.10.5
poetry install
```

Enter the Poetry shell:

```bash
poetry shell
```

**Pre-commit checks**

Install the pre-commit Git hooks

```bash
pre-commit install
```

## Setting up the infrastructure

## Adding new data

## Accessing data search
