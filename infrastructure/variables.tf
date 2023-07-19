resource "random_pet" "prefix" {}

variable "resource_group_name" {
  description = "The name for the Azure resource group"
  type        = string
  default     = "legal-doc-search"
}

variable "location" {
  description = "The Azure Region in which all resources should be provisioned"
  type        = string
  default     = "uksouth"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "${random_pet.prefix.id}-stacc"
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
  default     = "${random_pet.prefix.id}-stc"
}
