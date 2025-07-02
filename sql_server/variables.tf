variable "name" {
  type        = string
  description = "SQL Server name"
}

variable "location" {
  type        = string
  description = "Location of the SQL Server"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "admin_username" {
  type        = string
  description = "Administrator username for the SQL Server"
}

variable "admin_password" {
  type        = string
  description = "Administrator password for the SQL Server"
}

variable "database_name" {
  type        = string
  description = "Name of the SQL Database"
}

variable "sku_name" {
  type        = string
  description = "SKU name for the SQL Database (e.g., S1, P1)"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the SQL Server"
}