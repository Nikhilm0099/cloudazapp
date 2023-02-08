

resource "azurerm_mysql_flexible_server" "example" {
  name                   = var.azurerm_mysql_flexible_server_name
  resource_group_name    = var.rgname
  location               = var.location
  administrator_login    = var.db_username
  administrator_password = var.db_password
  #backup_retention_days  = 7
  delegated_subnet_id    = var.db_subnet_id
  private_dns_zone_id    = var.private_dns_zone_id
  sku_name               = var.db_sku

 # depends_on = [azurerm_private_dns_zone_virtual_network_link.example]
}

resource "azurerm_mysql_flexible_database" "example" {
  depends_on = [
    azurerm_mysql_flexible_server.example
  ]
  name                = var.azurerm_mysql_flexible_database_name
  resource_group_name = var.rgname
  server_name         = var.azurerm_mysql_flexible_server_name
  charset             = var.charset
  collation           = var.collation
}