resource "azurerm_sql_server" "this" {
  name                         = "project-caf"
  location                     = "eastus"
  resource_group_name          = ""
  administrator_login          = ""
  administrator_login_password = ""
  tags                         = {'Environment': 'Production', 'Project': 'project-caf'}
}

resource "azurerm_sql_database" "this" {
  name                = ""
  resource_group_name = ""
  location            = "eastus"
  server_name         = azurerm_sql_server.this.name
  sku_name            = ""
  tags                = {'Environment': 'Production', 'Project': 'project-caf'}
}