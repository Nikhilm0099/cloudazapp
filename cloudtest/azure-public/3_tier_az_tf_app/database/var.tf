
variable "rgname" {
type = string
description = "Name of the resource group"
}

variable "location" {
type = string
default = "west europe"
description = "Location of the resource group"
}

variable "db_subnet_name" {
type = string
default = "example-sn44"
description = "Name of the database subnet"
}

variable "vnet_names" {
type = string
description = "List of virtual network names"
}

variable "db_add_prefix" {
type = list(string)
default = ["10.100.3.0/24"]
description = "List of database IP address prefixes"
}

variable "service_endpoints" {
type = list(string)
default = ["Microsoft.Storage"]
description = "List of service endpoints"
}

variable "delegation_name" {
type = string
default = "fs"
description = "Name of the delegation"
}

variable "service_delegation_name" {
type = string
default = "Microsoft.DBforMySQL/flexibleServers"
description = "Name of the service delegation"
}

variable "private_dns_zone_name" {
type = string
default = "example24.mysql.database.azure.com"
description = "Name of the private DNS zone"
}

variable "azurerm_private_dns_zone_virtual_network_link" {
type = string
default = "exampleVnetZone.com"
description = "Name of the virtual network link for the private DNS zone"
}

variable "vnet_id" {
type = string
description = "ID of the virtual network"
}

variable "azurerm_mysql_flexible_server_name" {
type = string
default = "new-fs44"
description = "Name of the Azure MySQL flexible server"
}

variable "db_username" {
type = string
default = "psqladmin"
description = "Username for the database"
}

variable "db_password" {
type = string
default = "H@Sh1CoR3!"
description = "Password for the database"
}

variable "db_sku" {
type = string
default = "GP_Standard_D2ds_v4"
description = "SKU for the database"
}

variable "azurerm_mysql_flexible_database_name" {
type = string
default = "exampledb"
description = "Name of the Azure MySQL flexible database"
}

variable "charset" {
type = string
default = "utf8"
description = "Character set for the database"
}

variable "collation" {
type = string
description = "The default collation for the database"
default = "utf8_unicode_ci"
}

variable "db_subnet_id" {
type = string
description = "The ID of the database subnet"
}

variable "private_dns_zone_id" {
type = string
description = "The ID of the private DNS zone"
}




