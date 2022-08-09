terraform {

   required_version = ">=0.12"

   required_providers {
     azurerm = {
       source = "hashicorp/azurerm"
       version = "~>2.0"
     }
   }
 }

 provider "azurerm" {
   features {}
 }

 resource "azurerm_resource_group" "Wellstyn01" {
   name     = "${var.rgname}"
   location = "${var.rglocation}"
   tags = {
    Name = "not required"
  }
 }
 resource "azurerm_virtual_network" "ws-vnets" {
   name                = "${var.wsvnets}"
   address_space       = "[10.0.0.0/16]"
   location            = azurerm_resource_group.Wellstyn01.location
   resource_group_name = azurerm_resource_group.Wellstyn01.name
 }
