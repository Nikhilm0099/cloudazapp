


variable "rgname" {
  type        = string
  description = "The name of the Azure Resource Group to create."
}

variable "location" {
  type        = string
  default     = "west europe"
  description = "The location in which the Azure Resource Group and its resources will be created."
}


variable "vm_subnet" {
  type        = string
  default     = "vm-subnet"
  description = "The name of the virtual machine subnet in the virtual network."
}

variable "nsg_name" {
  type        = string
  default     = "kp-nsg"
  description = "The name of the network security group for the virtual machine subnet."
}

variable "vm_nic" {
  type        = string
  default     = "kp-vm-nic"
  description = "The name of the network interface for the virtual machine."
}

variable "vmss_name" {
  type        = string
  default     = "kp-vmss"
  description = "The name of the virtual machine scale set."
}

variable "vnet_add_space" {
  type        = list(string)
  default     = ["10.100.0.0/16"]
  description = "The address space of the virtual network."
}

variable "add_prefix" {
  type        = list(string)
  default     =  ["10.100.2.0/24"]
  description = "The subnet address prefix for the virtual machine subnet."
}

variable "sec_rule_name" {
  type        = string
  default     = "allow_SSH"
  description = "The name of the security rule for allowing SSH access."
}


variable "sec_desc" {
  type        = string
  default     = "Allow SSH access"
  description = "The description of the security rule for allowing SSH access."
}

variable "priority" {
  type        = number
  default     = 100
  description = "The priority of the security rule for allowing SSH access."
}

variable "direction" {
  type        = string
  default     = "Inbound"
  description = "The direction of the security rule for allowing SSH access."
}
variable "access" {
  type        = string
  default     = "Allow"
  description = "The action of the security rule for allowing SSH access."
}

variable "protocol1" {
  type        = string
  default     = "Tcp"
  description = "The protocol of the security rule for allowing SSH access."
}

variable "ipconfig_name" {
  type        = string
  default     = "primary"
  description = "The name of the IP configuration for the network interface of the virtual machine."
}
variable "pv_ip_allocation" {
  type        = string
  default     = "Dynamic"
  description = "The method of allocating the private IP address for the virtual machine."
}

variable "automatic_os_upgrade" {
  type        = bool
  default     = false
  description = "Indicates whether to automatically upgrade the operating system of the virtual machine."
}


variable "upgrade_policy_mode" {
type = string
description = "The policy mode for OS upgrades, either Manual or Automatic."
default = "Manual"
}

variable "sku_name" {
type = string
description = "The SKU name of the virtual machine scale set instance."
default = "Standard_F2"
}

variable "sku_tier" {
type = string
description = "The SKU tier of the virtual machine scale set instance."
default = "Standard"
}

variable "managed_disk_type" {
type = string
description = "The type of the managed disk that is attached to the virtual machine scale set instances."
default = "Standard_LRS"
}

variable "computer_prefix" {
type = string
description = "The prefix of the computer name for virtual machine scale set instances."
default = "APPVM2"
}

variable "admin_username" {
type = string
description = "The administrator username for virtual machine scale set instances."
default = "maleni"
}

variable "admin_password" {
type = string
description = "The administrator password for virtual machine scale set instances."
default = "India@444555"
}

variable "network_profile" {
type = string
description = "The name of the network profile for virtual machine scale set instances."
default = "terraformnetworkprofile"
}

variable "ip_configuration_name" {
type = string
description = "The name of the IP configuration for virtual machine scale set instances."
default = "TestIPConfiguration"
}

variable "backend_p_id" {
type = string
description = "The ID of the backend pool."
}

variable "source_port_range" {
type = string
description = "The source port range for the security rule."
default = "*"
}

variable "destination_port_range" {
type = string
description = "The destination port range for the security rule."
default = "22"
}

variable "source_address_prefix" {
type = string
description = "The source address prefix for the security rule."
default = "*"
}

variable "destination_address_prefix" {
type = string
description = "The destination address prefix for the security rule."
default = "*"
}

variable "sku_capacity" {
type = number
description = "The number of virtual machine scale set instances."
default = 2
}

variable "storage_profile_publisher" {
type = string
description = "The publisher of the image used for virtual machine scale set instances."
default = "Canonical"
}

variable "offer" {
type = string
description = "The offer of the image used for virtual machine scale set instances."
default = "UbuntuServer"
}

variable "storage_sku" {
type = string
description = "The SKU of the image used for"
}


variable "virsoning" {
type = string
default = "latest"
description = "The version of the operating system to use."
}

variable "caching" {
type = string
default = "ReadWrite"
description = "The caching type to use for the disk."
}

variable "create_option" {
type = string
default = "FromImage"
description = "The option to use for creating the disk."
}

variable "lun" {
type = number
default = 0
description = "The Logical Unit Number (LUN) to use for the disk."
}

variable "create_option_empty" {
type = string
default = "Empty"
description = "The option to use for creating an empty disk."
}

variable "disk_size_gb" {
type = number
default = 10
description = "The size of the disk in GB."
}

variable "disable_password_authentication" {
type = bool
default = false
description = "Whether to disable password authentication for the virtual machine."
}

variable "primary" {
type = bool
default = true
description = "Whether the virtual machine should be the primary one."
}

variable "subnet_id" {
type = string
description = "The ID of the subnet in which the virtual machine should be created."
}