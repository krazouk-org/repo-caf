#-------------------------- Common ----------------------------------------------------
variable "global" {
  description = "(Required) Global module of the project"
  type = object({
    project  = string
    location = string
    envir    = string
    loc      = string
    tags     = map(any)
  })
}

#-------------------------- Naming --------------------------------------------

variable "name" {
  type        = string
  description = "(Optional) The name used to generate the resource"
  default     = null
}

variable "location" {
  type        = string
  description = "(Optional) Complete name of the location. Example : francecentral"
  default     = null
}

variable "loc" {
  type        = string
  description = "(Optional) Resource Group location short name on Azure"
  default     = null
}

variable "envir" {
  type        = string
  description = "(Optional) Environment for the Project"
  default     = null
}

#-------------------------- Resource Specific --------------------------------
variable "resource_group_name" {
  description = "(Required) The resource group in which to create the resource."
  type        = string
}

variable "cidr" {
  type        = list(string)
  description = "(Required) list of CIDR for the Virtual Network. Example : [\"10.10.0.0/24\", \"10.12.1.0/24\"]"
}

variable "is_hub" {
  type        = bool
  description = "(Optional) Set to True to create a Hub VNET (no peerings, no routes)"
  default     = false
}

variable "internet_direct" {
  type        = bool
  description = "Set to true to route 0.0.0.0/0 direct to internet"
  default     = false
}

variable "use_remotegw" {
  type        = bool
  description = "(Optional) Set to True to create a Hub VNET (no peerings, no routes)"
  default     = true
}

variable "dns_servers" {
  type        = list(string)
  description = "(Optional) DNS Servers to use in the VNET"
  default     = ["10.80.0.132"]
}

variable "hub_vnet_name" {
  type        = string
  description = "(Optional) Name of the HUB VNET"
  default     = "HUB-VNET-FW-FC"
}

variable "hub_sub_id" {
  type        = string
  description = "(Optional) Subscription ID that contains the HUB VNET"
  default     = "68de4430-0807-4d06-8b40-d674773fe0c6"
}

variable "hub_rg" {
  type        = string
  description = "(Optional) ResourceGroup Name that contains the HUB VNET"
  default     = "HUB-RG-FW-FC"
}

variable "nva_ip_address" {
  type        = string
  description = "(Optional) IP Address og the NVA (FW)"
  default     = "10.80.0.196"
}

variable "hub_network" {
  type        = string
  description = "(Optional) CIDR of HUB VNET"
  default     = "10.80.0.0/24"
}

#-------------------------- Tags Management --------------------------------

variable "tags" {
  type        = map(string)
  description = "(Optional) Resource specific tags list"
  default     = {}
}