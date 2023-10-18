provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "./resource_group"

  resource_group_name = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source = "./storage_account"

  depends_on = [module.resource_group]

  resource_group_name = var.resource_group_name
  location = var.location
}

module "azurerm_kubernetes_cluster" {
    source = "./aks"

    depends_on = [module.resource_group]
    resource_group_name = var.resource_group_name
    location = var.location
}

module "acr" {
  source = "./azure_container_registry"

  resource_group_name = module.resource_group.name
  location            = var.location
  aks_object_id       = module.aks.aks_object_id
}

module "milvus" {
    source = "./milvus"

    depends_on = [module.azurerm_kubernetes_cluster]
}
