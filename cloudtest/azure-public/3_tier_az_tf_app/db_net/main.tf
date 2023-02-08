
resource "azurerm_subnet" "example2" {
  name                 = var.db_subnet_name
  resource_group_name  = var.rgname
  virtual_network_name = var.vnet_names
  address_prefixes     = var.db_add_prefix
  service_endpoints    = var.service_endpoints
  delegation {
    name = var.delegation_name
    service_delegation {
      name = var.service_delegation_name
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
      ]
    }
  }
}

resource "azurerm_private_dns_zone" "example" {
  name                = var.private_dns_zone_name
  resource_group_name = var.rgname
}

resource "azurerm_private_dns_zone_virtual_network_link" "example" {
  depends_on = [
    azurerm_private_dns_zone.example
  ]
  name                  = var.azurerm_private_dns_zone_virtual_network_link
  private_dns_zone_name = var.private_dns_zone_name
  virtual_network_id    = var.vnet_id
  resource_group_name   = var.rgname
}
