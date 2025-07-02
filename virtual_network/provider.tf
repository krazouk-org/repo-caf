terraform {
  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "<4"
      configuration_aliases = [azurerm.hub]
    }
  }
  required_version = ">=1.3.0"
}