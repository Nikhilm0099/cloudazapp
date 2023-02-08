

variable "rgname" {
type = string
description = "The name of the resource group"
}

variable "location" {
type = string
description = "The location of the resources"
default = "west europe"
}

variable "db_subnet_name" {
type = string
description = "The name of the database subnet"
default = "example-sn44"
}

variable "vnet_names" {
type = string
description = "The names of the virtual networks"
}

variable "db_add_prefix" {
type = list(string)
description = "The database address prefixes"
default = ["10.100.3.0/24"]
}

variable "service_endpoints" {
type = list(string)
description = "The names of the service endpoints"
default = ["Microsoft.Storage"]
}

variable "delegation_name" {
type = string
description = "The name of the delegation"
default = "fs"
}



variable "service_delegation_name" {
  type        = string
  description = "Service Delegation Name for Azure DB for MySQL flexible server"
  default     = "Microsoft.DBforMySQL/flexibleServers"
}

variable "private_dns_zone_name" {
  type        = string
  description = "Private DNS Zone Name for the Azure MySQL flexible server"
  default     = "example24.mysql.database.azure.com"
}

variable "azurerm_private_dns_zone_virtual_network_link" {
  type        = string
  description = "Azurerm Private DNS Zone Virtual Network Link Name"
  default     = "exampleVnetZone.com"
}

variable "vnet_id" {
  type        = string
  description = "Virtual Network ID for the Azure MySQL flexible server"
}

variable "azurerm_mysql_flexible_server_name" {
type = string
description = "The name of the Azure database for MySQL flexible server"
default = "new-fs44"
}

variable "db_username" {
type = string
description = "The admin username for the Azure MySQL Flexible Server."
default = "psqladmin"
}

variable "db_password" {
type = string
description = "The admin password for the Azure MySQL Flexible Server."
default = "H@Sh1CoR3!"
}

variable "db_sku" {
type = string
description = "The SKU for the Azure MySQL Flexible Server."
default = "GP_Standard_D2ds_v4"
}

variable "azurerm_mysql_flexible_database_name" {
type = string
description = "The name for the Azure MySQL Flexible Server database."
default = "exampledb"
}

variable "charset" {
type = string
description = "The character set for the Azure MySQL Flexible Server database."
default = "utf8"
}

variable "collation" {
type = string
description = "The collation for the Azure MySQL Flexible Server database."
default = "utf8_unicode_ci"
}
