variable "rgname" {
  type = string
  description = "Resource group"
  }

variable "rglocation" {
  type = string
  description = "Resource group location"
  }

variable "wstn-vnets" {
     type = string
     description = "Creating vnets"
  }

variable "addressspace" {
    type = string
    description = "assigining address spaces"
  }
variable "addressprefix" {
    type = string
  }