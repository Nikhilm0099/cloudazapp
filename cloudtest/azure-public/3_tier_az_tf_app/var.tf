
variable "rgname" {
  type        = string
  default     = "KP-TEST44"
  description = "The default name of the resource group."
}

variable "location" {
  type        = string
  default     = "west europe"
  description = "The default location of the resource group."
}

variable "vm_subnet" {
  type        = string
  default     = "vm-subnet"
  description = "The default name of the subnet for the virtual machine."
}

variable "nsg_name" {
  type        = string
  default     = "kp-nsg"
  description = "The default name of the network security group."
}

variable "vm_nic" {
  type        = string
  default     = "kp-vm-nic"
  description = "The default name of the virtual machine network interface card."
}


variable "vmss_name" {
  type        = string
  default     = "kp-vmss"
  description = "The default name of the virtual machine scale set."
}

variable "vnet_add_space" {
  type        = list(string)
  default     = ["10.100.0.0/16"]
  description = "The default virtual network address space."
}

variable "add_prefix" {
  type        = list(string)
  default     = ["10.100.2.0/24"]
  description = "The default address prefix for the subnet."
}

variable "sec_rule_name" {
  type        = string
  default     = "allow_SSH"
  description = "The default name of the security rule."
}

variable "sec_desc" {
  type        = string
  default     = "Allow SSH access"
  description = "The default description of the security rule."
}


variable "priority" {
  type        = number
  default     = 100
  description = "The default priority of the security rule."
}

variable "direction" {
  type        = string
  default     = "Inbound"
  description = "The default direction of the security rule."
}

variable "access" {
  type        = string
  default     = "Allow"
  description = "The default action to take on a security rule match."
}

variable "protocol1" {
  type        = string
  default     = "Tcp"
  description = "The default protocol for the security rule."
}

variable "ipconfig_name" {
  type        = string
  default     = "primary"
  description = "The default name of the network interface configuration."
}


variable "pv_ip_allocation" {
  type        = string
  default     = "Dynamic"
  description = "The default method of IP allocation for the public IP address."
}

variable "automatic_os_upgrade" {
  type        = bool
  default     = false
  description = "The default setting for automatic OS upgrades."
}

variable "upgrade_policy_mode" {
  type        = string
  default     = "Manual"
  description = "The default policy for OS upgrades."
}

variable "sku_name" {
  type        = string
  default     = "Standard_F2"
  description = "The default SKU name for the virtual machine scale set."
}

variable "sku_tier" {
  type        = string
  default     = "Standard"
  description = "The default tier for the virtual machine scale set SKU."
}

variable "managed_disk_type" {
type = string
description = "Managed disk type for the virtual machine"
default = "Standard_LRS"
}

variable "computer_prefix" {
type = string
description = "Prefix for the computer name of virtual machines in the scale set"
default = "APPVM2"
}

variable "admin_username" {
type = string
description = "Administrator username for the virtual machine"
default = "maleni"
}

variable "admin_password" {
type = string
description = "Administrator password for the virtual machine"
default = "India@444555"
}

variable "network_profile" {
type = string
description = "Name of the network profile to use for the virtual machine"
default = "terraformnetworkprofile"
}
variable "ip_configuration_name" {
type = string
description = "Name of the IP Configuration for the Load Balancer"
default = "TestIPConfiguration"
}

variable "publicIPForLB" {
type = string
description = "Name of the Public IP for the Load Balancer"
default = "PublicIPForLB"
}

variable "vnet_name" {
type = string
description = "Name of the Virtual Network for the Load Balancer"
default = "KP-test-vnet"
}

variable "allocation_method" {
type = string
description = "Allocation method for the Public IP of Load Balancer"
default = "Static"
}

variable "azurelb_name" {
type = string
description = "Name of the Load Balancer"
default = "TestLoadBalancer"
}

variable "azurelb_bepool_name" {
type = string
description = "Name of the Backend Address Pool for the Load Balancer"
default = "BackEndAddressPool"
}


variable "lbrule" {
type = string
description = "The name of the Load Balancer rule."
default = "LBRule"
}

variable "protocol2" {
type = string
description = "The protocol to be used for the Load Balancer rule."
default = "Tcp"
}

variable "port_80" {
type = number
description = "The port number for HTTP traffic."
default = 80
}

variable "port_443" {
type = number
description = "The port number for HTTPS traffic."
default = 443
}

variable "ssl" {
type = string
description = "The SSL certificate for HTTPS traffic."
default = "SSL"
}


#
variable "azurerm_lb_probe" {
description = "The name of the health probe for the Load Balancer."
type = string
default = "healthProbe44"
}

variable "az_lb_nat_rule_name" {
description = "The name of the NAT rule for the Load Balancer."
type = string
default = "SSH"
}

variable "port_start" {
description = "The start port for the Load Balancer NAT rule."
type = number
default = 50000
}

variable "port_end" {
description = "The end port for the Load Balancer NAT rule."
type = number
default = 50010
}

variable "backend_port" {
description = "The backend port for the Load Balancer NAT rule."
type = number
default = 22
}

#
variable "source_port_range" {
  type        = string
  default     = "*"
  description = "Source port range for network security rule"
}

variable "destination_port_range" {
  type        = string
  default     = "22"
  description = "Destination port range for network security rule"
}

variable "source_address_prefix" {
  type        = string
  default     = "*"
  description = "Source address prefix for network security rule"
}

variable "destination_address_prefix" {
  type        = string
  default     = "*"
  description = "Destination address prefix for network security rule"
}

variable "sku_capacity" {
  type        = number
  default     = 2
  description = "Number of nodes for virtual machine scale set"
}

variable "storage_profile_publisher" {
  type        = string
  default     = "Canonical"
  description = "Publisher for virtual machine image"
}

variable "offer" {
  type        = string
  default     = "UbuntuServer"
  description = "Offer for virtual machine image"
}

variable "storage_sku" {
  type        = string
  default     = "16.04-LTS"
  description = "SKU for virtual machine image"
}

variable "virsoning" {
type = string
description = "The version of the image to use for the virtual machine"
default = "latest"
}

variable "caching" {
type = string
description = "The caching type to use for the data disk of the virtual machine"
default = "ReadWrite"
}

variable "create_option" {
type = string
description = "The create option to use for the virtual machine disk"
default = "FromImage"
}

variable "lun" {
type = number
description = "The logical unit number (LUN) to use for the data disk of the virtual machine"
default = 0
}

variable "create_option_empty" {
type = string
description = "The create option to use for the virtual machine disk when it is empty"
default = "Empty"
}

variable "disk_size_gb" {
type = number
description = "The size of the virtual machine data disk in GB"
default = 10
}

variable "disable_password_authentication" {
type = bool
description = "Flag to disable password authentication for the virtual machine"
default = false
}

variable "primary" {
type = bool
description = "Flag to indicate whether the network security group is the primary network security group for the virtual network subnet"
default = true
}

variable "db_subnet_name" {
type = string
description = "The name of the virtual network subnet for the database"
default = "db-sunetn44"
}

variable "db_add_prefix" {
type = list(string)
description = "The address prefixes for the virtual network subnet for the database"
default = ["10.100.4.0/24"]
}


variable "service_endpoints" {
  type        = list(string)
  description = "List of Azure services to allow traffic to."
  default     = ["Microsoft.Storage"]
}

variable "delegation_name" {
  type        = string
  description = "Name of the service delegation."
  default     = "fs"
}


variable "service_delegation_name" {
  type        = string
  description = "Name of the service delegation for the Azure MySQL Flexible Server."
  default     = "Microsoft.DBforMySQL/flexibleServers"
}

variable "private_dns_zone_name" {
  type        = string
  description = "Name of the private DNS zone."
  default     = "44awsmysql.database.azure.com"
}

variable "azurerm_mysql_flexible_server_name" {
  type        = string
  description = "Name of the Azure MySQL Flexible Server."
  default     = "new-fs44"
}

variable "db_username" {
  type        = string
  description = "Username for the database."
  default     = "psqladmin"
}

variable "db_password" {
  type        = string
  description = "Password for the database."
  default     = "H@Sh1CoR3!"
}

variable "db_sku" {
  type        = string
  description = "SKU of the database."
  default     = "GP_Standard_D2ds_v4"
}

variable "azurerm_mysql_flexible_database_name" {
  type        = string
  description = "Name of the Azure MySQL Flexible database."
  default     = "exampledb"
}

variable "charset" {
  type        = string
  description = "Character set for the database."
  default     = "utf8"
}


variable "collation" {
  type        = string
  description = "Collation for the database."
  default     = "utf8_unicode_ci"
}

variable "azurerm_private_dns_zone_virtual_network_link" {
  type        = string
  description = "Name of the virtual network link for the private DNS zone."
  default     = "exampleVnetZone.com"
}



