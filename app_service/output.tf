output "app_service_id" {
  value       = azurerm_app_service.this.id
  description = "ID of the App Service"
}

output "app_service_default_site_hostname" {
  value       = azurerm_app_service.this.default_site_hostname
  description = "Default hostname of the App Service"
}