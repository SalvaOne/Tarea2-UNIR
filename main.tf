provider "azurerm" {
  features {}
}

module "azure" {
  source = "./azure"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source = "./acr"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "aks" {
  source = "./aks"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Incluir el NSG
module "nsg" {
  source = "./nsg"
}