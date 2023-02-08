resource "azurerm_public_ip" "example" {
  name                = var.publicIPForLB
  location            = var.location
  resource_group_name = var.rgname
  allocation_method   = var.allocation_method
}

resource "azurerm_lb" "example" {
  name                = var.azurelb_name
  location            = var.location
  resource_group_name = var.rgname

  frontend_ip_configuration {
    name                 = var.publicIPForLB
    public_ip_address_id = azurerm_public_ip.example.id
  }
}

resource "azurerm_lb_backend_address_pool" "example" {
  loadbalancer_id = azurerm_lb.example.id
  name            = var.azurelb_bepool_name
}

resource "azurerm_lb_rule" "example" {
  loadbalancer_id                = azurerm_lb.example.id
  name                           = var.lbrule
  protocol                       = var.protocol2
  frontend_port                  = var.port_80
  backend_port                   = var.port_80
  frontend_ip_configuration_name = var.publicIPForLB
}

resource "azurerm_lb_rule" "example1" {
  loadbalancer_id                = azurerm_lb.example.id
  name                           = var.ssl
  protocol                       = var.protocol2
  frontend_port                  = var.port_443
  backend_port                   = var.port_443
  frontend_ip_configuration_name = var.publicIPForLB
}


resource "azurerm_network_interface_backend_address_pool_association" "example" {
    depends_on = [
    
    ]
  network_interface_id    = var.network_interface_id # need to give input
  ip_configuration_name   = "primary"
  backend_address_pool_id = azurerm_lb_backend_address_pool.example.id
}


resource "azurerm_lb_probe" "probe" {
 

  name                = var.azurerm_lb_probe
  #resource_group_name = azurerm_resource_group.main.name
  loadbalancer_id     = azurerm_lb.example.id
  protocol            = var.protocol2
  port                = var.port_80
}


resource "azurerm_lb_nat_rule" "example" {
  resource_group_name            = var.rgname
  loadbalancer_id                = azurerm_lb.example.id
  name                           = var.az_lb_nat_rule_name
  protocol                       = var.protocol2
  frontend_port_start                 = var.port_start
  frontend_port_end                 = var.port_end
  backend_port                   = var.backend_port
  frontend_ip_configuration_name = var.publicIPForLB
  backend_address_pool_id        = azurerm_lb_backend_address_pool.example.id
}