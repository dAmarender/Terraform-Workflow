terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  #subscription_id  = var.subscription_id
  #client_id        = var.client_id
  #client_secrets   = var.client_secret
  #tennent_id       = var.tennent_id
}

# Create a resource group
resource "azurerm_resource_group" "TF-resource" {
  name     = "Terraform resources"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "VNET02" {
  name                = "VNET_02"
  resource_group_name = azurerm_resource_group.TF-resource.name
  location            = azurerm_resource_group.TF-resource.location
  address_space       = ["10.1.0.0/16"]
 
}
