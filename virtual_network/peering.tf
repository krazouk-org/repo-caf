
# Peering entre le nouveau VNET et le VNET du hub
resource "azurerm_virtual_network_peering" "local_to_hub" {
  count                        = var.is_hub ? 0 : 1
  name                         = "peer-${lower(azurerm_virtual_network.this.name)}_To_${lower(var.hub_vnet_name)}"
  resource_group_name          = azurerm_virtual_network.this.resource_group_name
  virtual_network_name         = azurerm_virtual_network.this.name
  remote_virtual_network_id    = "/subscriptions/${var.hub_sub_id}/resourceGroups/${var.hub_rg}/providers/Microsoft.Network/virtualNetworks/${var.hub_vnet_name}"
  allow_virtual_network_access = true
  allow_forwarded_traffic      = false
  use_remote_gateways          = var.use_remotegw ? true : false
  allow_gateway_transit        = false
}

# Peering entre le VNET du hub et le nouveau VNET
resource "azurerm_virtual_network_peering" "hub_to_local" {
  count                        = var.is_hub ? 0 : 1
  provider                     = azurerm.hub
  name                         = "peer-${lower(var.hub_vnet_name)}_To_${lower(azurerm_virtual_network.this.name)}"
  resource_group_name          = var.hub_rg
  virtual_network_name         = var.hub_vnet_name
  remote_virtual_network_id    = azurerm_virtual_network.this.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  use_remote_gateways          = false
  allow_gateway_transit        = var.use_remotegw ? true : false
}