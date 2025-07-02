resource "azurerm_app_service" "this" {
  name                = "project-caf"
  location            = "eastus"
  resource_group_name = ""
  app_service_plan_id = ""

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = ""
  }

  tags = {'Environment': 'Production', 'Project': 'project-caf'}
}