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
 }