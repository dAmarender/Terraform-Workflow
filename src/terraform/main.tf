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

 resource "azurerm_resource_group" "Wellstyn" {
   name     = "${var.rgname}"
   location = "${var.rglocation}"
   tags = {
    Name = "not required"
  }
 }
 resource "azurerm_virtual_network" "ws-vnets" {
   name                = "${var.wsvnets}"
   address_space       = ["${var.vnetaddress}"]
   location            = azurerm_resource_group.Wellstyn.location
   resource_group_name = azurerm_resource_group.Wellstyn.name
 }
