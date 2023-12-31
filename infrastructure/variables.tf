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
