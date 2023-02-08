
resource "azurerm_resource_group" "main" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_virtual_network" "main" {
  depends_on = [
    azurerm_resource_group.main
  ]
  name                = var.vnet_name
  address_space       = var.vnet_add_space
  resource_group_name = var.rgname
  location            = var.location
}

# Create a Subnet within the Virtual Network
resource "azurerm_subnet" "internal" {
  name                 = var.vm_subnet
  virtual_network_name = var.vnet_name
  resource_group_name  = var.rgname
  address_prefixes     = var.add_prefix


}

# Create a Network Security Group with some rules
resource "azurerm_network_security_group" "main" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rgname

  security_rule {
    name                       = var.sec_rule_name
    description                = var.sec_desc
    priority                   = var.priority
    direction                  = var.direction
    access                     = var.access
    protocol                   = var.protocol1
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
  }
}

# Create a network interface for VMs and attach the PIP and the NSG
resource "azurerm_network_interface" "main" {
  name                = var.vm_nic
  location            = var.location
  resource_group_name = var.rgname
  # network_security_group_id = azurerm_network_security_group.main.id

  ip_configuration {
    name                          = var.ipconfig_name
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = var.pv_ip_allocation
    #private_ip_address            = "${cidrhost("10.100.1.8/24", 4)}"
  }
}


