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

## Infrastructure

### Infrastructure stack

On Azure we deploy:
- Resource group: to contain all infrastructure resources
- Storage account: to store all data
- Azure Kubernetes Service: Hosted Kubernetes service on Azure
- Azure Container Registry: A container registry hosted on Azure
- Milvus: Vector database hosted on Kubernetes

### Setting up the infrastructure

To deploy these resources to Azure, navigate to the `infrastructure` directory and run the following commands:

```bash
terraform init
```


```bash
terraform apply
```

The apply step may take up to 10 minutes due to the deployment of the Azure Kubernetes Service (AKS) and services on top of that.

### Deploy the application

On top of Kubernetes we also deploy our FastAPI application. This interfaces with the vector database, abstracting away the commands for adding data and retrieving data.

To deploy this we create a Docker image and push it to the Azure Container Registry.

```bash
docker build -t
```

```bash
docker push
```

Navigate back to the root directory of this repository then run:

```bash
kubectl apply -f kubernetes/
```

Which will deploy all the required containers on the AKS cluster.

To get the endpoint of the FastAPI server you can run:

```bash
kubectl get services
```

And find the corresponding service and external IP for the server.

## Adding new data

## Accessing data search
