
module "vnet" {

  source           = "./vnet"
  rgname           = var.rgname
  location         = var.location
  vnet_name        = var.vnet_name
  vnet_add_space   = var.vnet_add_space
  vm_subnet        = var.vm_subnet
  add_prefix       = var.add_prefix
  nsg_name         = var.nsg_name
  sec_rule_name    = var.sec_rule_name
  sec_desc         = var.sec_desc
  priority         = var.priority
  direction        = var.direction
  access           = var.access
  protocol1        = var.protocol1
  vm_nic           = var.vm_nic
  ipconfig_name    = var.ipconfig_name
  pv_ip_allocation = var.pv_ip_allocation
}


module "vmss" {
  source = "./vmss"
  rgname = module.vnet.rgname
  #vnet_name = module.vnet.vnet_names
  location                        = var.location
  vmss_name                       = var.vmss_name
  automatic_os_upgrade            = var.automatic_os_upgrade
  upgrade_policy_mode             = var.upgrade_policy_mode
  sku_name                        = var.sku_name
  sku_tier                        = var.sku_tier
  managed_disk_type               = var.managed_disk_type
  computer_prefix                 = var.computer_prefix
  admin_password                  = var.admin_password
  admin_username                  = var.admin_username
  network_profile                 = var.network_profile
  ip_configuration_name           = var.ip_configuration_name
  backend_p_id                    = module.lb.backend_p_id
  source_port_range               = var.source_port_range
  destination_port_range          = var.destination_port_range
  source_address_prefix           = var.source_address_prefix
  destination_address_prefix      = var.destination_address_prefix
  sku_capacity                    = var.sku_capacity
  storage_profile_publisher       = var.storage_profile_publisher
  offer                           = var.offer
  storage_sku                     = var.storage_sku
  virsoning                       = var.virsoning
  caching                         = var.caching
  create_option                   = var.create_option
  lun                             = var.lun
  create_option_empty             = var.create_option_empty
  disk_size_gb                    = var.disk_size_gb
  disable_password_authentication = var.disable_password_authentication
  primary                         = var.primary
  subnet_id                       = module.vnet.subnet_id
}


module "lb" {

  depends_on = [
    module.vnet
  ]
  source               = "./load_balancer"
  rgname               = module.vnet.rgname
  location             = var.location
  publicIPForLB        = var.publicIPForLB
  allocation_method    = var.allocation_method
  azurelb_name         = var.azurelb_name
  azurelb_bepool_name  = var.azurelb_bepool_name
  lbrule               = var.lbrule
  protocol2            = var.protocol2
  port_80              = var.port_80
  ssl                  = var.ssl
  port_443             = var.port_443
  azurerm_lb_probe     = var.azurerm_lb_probe
  az_lb_nat_rule_name  = var.az_lb_nat_rule_name
  port_start           = var.port_start
  port_end             = var.port_end
  backend_port         = var.backend_port
  network_interface_id = module.vnet.network_interface_id


}

module "pvt_dns_zone" {
  source = "./db_net"
  depends_on = [
    module.vnet, module.networking
  ]
  private_dns_zone_name                         = var.private_dns_zone_name
  rgname                                        = module.vnet.rgname
  vnet_id                                       = module.vnet.vnet_id
  vnet_names                                    = module.vnet.vnet_names
  db_subnet_name                                = var.db_subnet_name
  db_add_prefix                                 = var.db_add_prefix
  service_endpoints                             = var.service_endpoints
  delegation_name                               = var.delegation_name
  service_delegation_name                       = var.service_delegation_name
  azurerm_private_dns_zone_virtual_network_link = var.azurerm_private_dns_zone_virtual_network_link

}

module "db" {

  depends_on = [
    module.pvt_dns_zone
  ]
  source = "./database"

  azurerm_mysql_flexible_server_name   = var.azurerm_mysql_flexible_server_name
  location                             = var.location
  db_username                          = var.db_username
  db_password                          = var.db_password
  db_subnet_id                         = module.pvt_dns_zone.db_subnet_id
  db_sku                               = var.db_sku
  azurerm_mysql_flexible_database_name = var.azurerm_mysql_flexible_database_name
  rgname                               = module.vnet.rgname
  charset                              = var.charset
  collation                            = var.collation
  private_dns_zone_id                  = module.pvt_dns_zone.private_dns_zone_id
  vnet_names                           = module.vnet.vnet_names
  vnet_id                              = module.vnet.vnet_id
}
