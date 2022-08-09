variable "rgname" {
  type = string
  #default = "WSTYN-RESOURCES"
  description = "Resource group"
  }

variable "rglocation" {
  type = string
  #default = "East US"
  description = "Resource group location"
  }
variable "wsvnets" {
    type = string
    description = "Wellstyn Virtual networks"
}
variable "vnetaddress" {
    type = "[10.0.0.0/16]"
    description = "Vent address"
}