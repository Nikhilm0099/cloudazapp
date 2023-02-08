output "db_subnet_id" {
  value = azurerm_subnet.example2.id
}

output "private_dns_zone_id" {
  value = azurerm_private_dns_zone.example.id
}