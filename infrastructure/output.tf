output "azure_storage_primary_connection_string" {
    description = "The Azure connection string for the data storage."
    value       = module.storage_account.primary_connection_string
    sensitive   = true
}

output "storage_container_url" {
  description = "The url of the storage container"
  value = module.storage_account.storage_container_url
  sensitive = false
}

output "storage_account_name" {
  description = "The storage account name"
  value = module.storage_account.storage_account_name
  sensitive = false
}

output "kubernetes_cluster_name" {
  description = "The Kubernetes cluster name"
  value = module.azurerm_kubernetes_cluster.aks_cluster_name
}

output "container_registry_url" {
  description = "The URL used to log into the container registry"
  value = module.acr.container_registry_url
}

output "container_registry_name" {
  description = "The name of the container registry"
  value = module.acr.container_registry_name
}
