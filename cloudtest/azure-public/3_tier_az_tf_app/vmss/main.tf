



resource "azurerm_virtual_machine_scale_set" "example" {
  name                = var.vmss_name
  location            = var.location
  resource_group_name = var.rgname

  # automatic rolling upgrade
  automatic_os_upgrade = var.automatic_os_upgrade
  upgrade_policy_mode  = var.upgrade_policy_mode


  # required when using rolling upgrade policy
  #health_probe_id = azurerm_lb_probe.example.id

  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.sku_capacity
  }

  storage_profile_image_reference {
    publisher = var.storage_profile_publisher
    offer     = var.offer
    sku       = var.storage_sku
    version = var.virsoning
  }

  storage_profile_os_disk {
    #name              = "osdisk1"
    caching           = var.caching
    create_option     = var.create_option
    managed_disk_type = var.managed_disk_type
  }

  storage_profile_data_disk {
    lun           = var.lun
    caching       = var.caching
    create_option = var.create_option_empty
    disk_size_gb  = var.disk_size_gb
  }

  os_profile {
    computer_name_prefix = var.computer_prefix
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = var.disable_password_authentication
  }



  network_profile {
    name    = var.network_profile
    primary = var.primary

    ip_configuration {
      name                                   = var.ip_configuration_name
      primary                                = var.primary
      subnet_id                              = var.subnet_id
      load_balancer_backend_address_pool_ids = [var.backend_p_id]
     # load_balancer_inbound_nat_rules_ids    = [azurerm_lb_nat_pool.example.id]
    }
  }

}

