## Configuración de los proveedores de Terraform ##

terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "4aedf5f0-99b5-4324-9b9f-8d1ceac546eb"
  features {}
}
# Obtener la suscripción actual
data "azurerm_subscription" "current" {}

