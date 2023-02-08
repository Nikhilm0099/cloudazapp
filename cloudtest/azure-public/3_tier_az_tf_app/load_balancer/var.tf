
variable "publicIPForLB" {
type = string
default = "PublicIPForLB"
description = "The name of the public IP address to be used for the Load Balancer."
}

variable "rgname" {
type = string
description = "The name of the resource group in which the Load Balancer will be created."
}

variable "location" {
type = string
default = "west europe"
description = "The location in which the Load Balancer will be created."
}

variable "allocation_method" {
type = string
default = "Static"
description = "The method used to allocate the IP address for the Load Balancer."
}

variable "azurelb_name" {
type = string
default = "TestLoadBalancer"
description = "The name of the Load Balancer."
}

variable "azurelb_bepool_name" {
type = string
default = "BackEndAddressPool"
description = "The name of the back-end address pool for the Load Balancer."
}

variable "lbrule" {
type = string
default = "LBRule"
description = "The name of the load balancing rule for the Load Balancer."
}

variable "protocol2" {
type = string
default = "Tcp"
description = "The protocol to be used for the Load Balancer."
}

variable "port_80" {
type = number
default = 80
description = "The port number to be used for the Load Balancer."
}


variable "port_443" {
  type        = number
  description = "The port number for SSL traffic"
  default     = 443
}

variable "ssl" {
  type        = string
  description = "The SSL protocol used for the load balancer rule"
  default     = "SSL"
}

variable "network_interface_id" {
  type        = string
  description = "The ID of the network interface to be associated with the load balancer"
  default     = ""
}

variable "azurerm_lb_probe" {
  type        = string
  description = "The name of the health probe for the load balancer"
  default     = "healthProbe44"
}

variable "az_lb_nat_rule_name" {
  type        = string
  description = "The name of the NAT rule for the load balancer"
  default     = "SSH"
}

variable "port_start" {
  type        = number
  description = "The start port number for the NAT rule"
  default     = 50000
}

variable "port_end" {
  type        = number
  description = "The end port number for the NAT rule"
  default     = 50010
}

variable "backend_port" {
  type        = number
  description = "The backend port number for the NAT rule"
  default     = 22
}

