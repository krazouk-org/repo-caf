output "sql_server_id" {
  value       = azurerm_sql_server.this.id
  description = "ID of the SQL Server"
}

output "sql_server_fully_qualified_domain_name" {
  value       = azurerm_sql_server.this.fully_qualified_domain_name
  description = "Fully qualified domain name of the SQL Server"
}

output "sql_database_id" {
  value       = azurerm_sql_database.this.id
  description = "ID of the SQL Database"
}