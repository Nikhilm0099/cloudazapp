output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "vnet_names" {
  value = azurerm_virtual_network.main.name
}

output "subnet_id" {
  value = azurerm_subnet.internal.id
}

output "rgname" {
  value = azurerm_resource_group.main.name
}


output "network_interface_id" {
  value = azurerm_network_interface.main.id
}


