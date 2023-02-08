
variable "rgname" {
default = "KP-TEST44"
type = string
description = "The name of the resource group ."
}

variable "location" {
default = "west europe"
type = string
description = "The location in which the resource group and its resources will be created."
}

variable "vnet_name" {
default = "KP-test-vnet"
type = string
description = "The name of the virtual network ."
}

variable "vnet_add_space" {
default = ["10.100.0.0/16"]
type = list(string)
description = "The address space for the virtual network."
}

variable "vm_subnet" {
default = "vm-subnet"
type = string
description = "The name of the subnet within the virtual network for the virtual machines."
}

variable "add_prefix" {
default = ["10.100.2.0/24"]
type = list(string)
description = "The address prefix for the subnet within the virtual network."
}

variable "nsg_name" {
default = "kp-nsg"
type = string
description = "The name of the network security group ."
}

variable "vm_nic" {
default = "kp-vm-nic"
type = string
description = "The name of the virtual machine network interface ."
}

variable "vmss_name" {
default = "kp-vmss"
type = string
description = "The name of the virtual machine scale set ."
}

variable "sec_rule_name" {
default = "allow_SSH"
type = string
description = "The name of the security rule ."
}


variable "sec_desc" {
default = "Allow SSH access"
type = string
description = "Description for the security rule, which is set to allow SSH access."
}

variable "priority" {
default = 100
type = number
description = "Priority for the security rule, which is set to 100."
}

variable "direction" {
default = "Inbound"
type = string
description = "Direction for the security rule, which is set to Inbound."
}
variable "access" {
default = "Allow"
type = string
description = "Access for the security rule, which is set to Allow."
}

variable "protocol1" {
default = "Tcp"
type = string
description = "Protocol for the security rule, which is set to Tcp."
}

variable "ipconfig_name" {
default = "primary"
type = string
description = "Name of the IP configuration, which is set to primary."
}

variable "pv_ip_allocation" {
default = "Dynamic"
type = string
description = "IP allocation method for the virtual machine, which is set to Dynamic."
}

variable "automatic_os_upgrade" {
default = false
type = bool
description = "Flag to indicate if the virtual machine's OS should be automatically upgraded, which is set to false."
}

variable "upgrade_policy_mode" {
default = "Manual"
type = string
description = "Upgrade policy mode for the virtual machine, which is set to Manual."
}

variable "sku_name" {
default = "Standard_F2"
type = string
description = "SKU name for the virtual machine, which is set to Standard_F2."
}

variable "sku_tier" {
default = "Standard"
type = string
description = "SKU tier for the virtual machine, which is set to Standard."
}

variable "managed_disk_type" {
default = "Standard_LRS"
type = string
description = "Managed disk type for the virtual machine, which is set to Standard_LRS."
}

variable "computer_prefix" {
default = "APPVM2"
type = string
description = "The prefix for the computer names to be created."
}

variable "admin_username" {
default = "maleni"
type = string
description = "The administrator username for the virtual machine."
}

variable "admin_password" {
default = "India@444555"
type = string
description = "The password for the administrator user of the virtual machine."
}

variable "network_profile" {
default = "terraformnetworkprofile"
type = string
description = "The name of the network profile for the virtual machine."
}

variable "ip_configuration_name" {
default = "TestIPConfiguration"
type = string
description = "The name of the IP configuration for the virtual machine."
}

variable "source_port_range" {
default = "*"
type = string
description = "The source port range for the network security group rule."
}
variable "destination_port_range" {
default = "22"
type = string
description = "The destination port range for the network security group rule."
}

variable "source_address_prefix" {
default = "*"
type = string
description = "The source address prefix for the network security group rule."
}

variable "destination_address_prefix" {
default = "*"
type = string
description = "The destination address prefix for the network security group rule."
}

variable "sku_capacity" {
default = 2
type = number
description = "The capacity for the virtual machine scale set."
}

variable "storage_profile_publisher" {
default = "Canonical"
type = string
description = "The publisher for the storage profile."
}
variable "offer" {
  type        = string
  default     = "UbuntuServer"
  description = "The default image offer, with the value set to 'UbuntuServer'."
}

variable "storage_sku" {
  type        = string
  default     = "16.04-LTS"
  description = "The default storage SKU for the virtual machine, with the value set to '16.04-LTS'."
}

variable "version1" {
  type        = string
  default     = "latest"
  description = "The default version of the image, with the value set to 'latest'."
}

variable "caching" {
  type        = string
  default     = "ReadWrite"
  description = "The default caching mode for the virtual machine disk, with the value set to 'ReadWrite'."
}

variable "create_option" {
  type        = string
  default     = "FromImage"
  description = "The default option for creating the virtual machine, with the value set to 'FromImage'."
}

variable "lun" {
  type        = number
  default     = 0
  description = "The default LUN number, with the value set to 0."
}

variable "create_option_empty" {
  type        = string
  default     = "Empty"
  description = "The default option for creating the virtual machine disk, with the value set to 'Empty'."
}

variable "disk_size_gb" {
  type        = number
  default     = 10
  description = "The default size of the virtual machine disk, with the value set to 10 GB."
}

variable "disable_password_authentication" {
  type        = bool
  default     = false
  description = "The default option for disabling password authentication, with the value set to false."
}

variable "primary" {
  type        = bool
  default     = true
  description = "The default option for setting the virtual machine as primary, with the value set to true."
}

