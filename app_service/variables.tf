variable "name" {
  type        = string
  description = "App Service name"
}

variable "location" {
  type        = string
  description = "Location of the App Service"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "app_service_plan_id" {
  type        = string
  description = "ID of the App Service Plan"
}

variable "run_from_package" {
  type        = string
  description = "Indicates if the app should run from a package"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the App Service"
}