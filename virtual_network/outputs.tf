output "resource_group_name" {
  description = "The resource group which contains the virtual network."
  value       = var.resource_group_name
}

output "name" {
  description = "The name of the virtual network."
  value       = azurerm_virtual_network.this.name
}

output "id" {
  description = "The id of the virtual network."
  value       = azurerm_virtual_network.this.id
}

output "address_space" {
  description = "The address space of the virtual network."
  value       = azurerm_virtual_network.this.address_space[0]
}

output "dns_servers" {
  description = "The dns servers of the virtual network."
  value       = azurerm_virtual_network.this.dns_servers
}

output "route_table_id" {
  description = "The id of the route table created with the virtual network"
  value       = var.is_hub ? "" : azurerm_route_table.this.id
}

output "peering_hub_to_local_id" {
  description = "The id of the peering from the hub to the local vnet"
  value       = var.is_hub ? "" : azurerm_virtual_network_peering.hub_to_local[0].id
}

output "peering_local_to_hub_id" {
  description = "The id of the peering from the local vnet to the hub"
  value       = var.is_hub ? "" : azurerm_virtual_network_peering.local_to_hub[0].id
}

locals {
  excluded_tags = ["MODULE_VERSION"]
}

output "tags" {
  value       = { for k, v in azurerm_virtual_network.this.tags : k => v if !contains(local.excluded_tags, k) }
  description = "Tags of the Virtual Network"
}