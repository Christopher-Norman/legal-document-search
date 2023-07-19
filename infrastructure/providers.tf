terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.0.1"
    }
  }

  required_version = ">= 1.1.0"
}
