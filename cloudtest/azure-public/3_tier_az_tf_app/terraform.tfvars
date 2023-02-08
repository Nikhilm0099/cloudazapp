

#Resource group
rgname   = "KP-Task1"   # The name of the resource group to which the Azure infrastructure components belong.
location = "west europe" # The location of the resource group.

#Virtual Machine Subnet
vm_subnet = "vm-subnet" # The name of the subnet that will be used by the virtual machine.
nsg_name  = "kp-nsg"    # The name of the network security group that will be associated with the virtual machine subnet.
vm_nic    = "kp-vm-nic" # The name of the network interface card that will be associated with the virtual machine.

#Virtual Machine Scale Set
vmss_name      = "kp-vmss"         # The name of the virtual machine scale set.
vnet_add_space = ["10.100.0.0/16"] # The address space of the virtual network that will be associated with the virtual machine scale set.
add_prefix     = ["10.100.2.0/24"] # The subnet address prefix of the subnet that will be associated with the virtual machine scale set.

#Security Rule
sec_rule_name = "allow_SSH"        # The name of the security rule that will allow SSH access.
sec_desc      = "Allow SSH access" # The description of the security rule.
priority      = 100                # The priority of the security rule.
direction     = "Inbound"          # The direction of the security rule.
access        = "Allow"            # The type of access that the security rule allows.
protocol1     = "Tcp"              # The protocol of the security rule.

#IP Configuration
ipconfig_name    = "primary" # The name of the primary IP configuration.
pv_ip_allocation = "Dynamic" # The type of private IP allocation.

#Virtual Machine
automatic_os_upgrade  = false                     # Indicates whether automatic operating system upgrades are enabled or not.
upgrade_policy_mode   = "Manual"                  # The upgrade policy mode of the virtual machine.
sku_name              = "Standard_F2"             # The name of the virtual machine sku.
sku_tier              = "Standard"                # The tier of the virtual machine sku.
managed_disk_type     = "Standard_LRS"            # The type of managed disk.
computer_prefix       = "APPVM2"                  # The prefix that will be used for naming the virtual machine.
admin_username        = "vmss44"                  # The admin username of the virtual machine.
admin_password        = "India@444555"            # The admin password of the virtual machine.
network_profile       = "terraformnetworkprofile" # The network profile of the virtual machine.
ip_configuration_name = "TestIPConfiguration"     # The name of the IP configuration.
publicIPForLB         = "PublicIPForLB"           # The public IP address that will be associated with the load balancer.
vnet_name             = "KP-test-vnet"            # The name of the virtual network that will be associated with the virtual machine.
allocation_method     = "Static"                  # The type of IP address allocation method.

#Load Balancer
azurelb_name                       = "TestLoadBalancer"                     # The name of the Azure Load Balancer.
azurelb_bepool_name                = "BackEndAddressPool"                   # The name of the Backend Address Pool that will be associated with the load balancer.
lbrule                             = "LBRule"                               # The name of the load balancing rule.
protocol2                          = "Tcp"                                  # The protocol used for the load balancing rule.
port_80                            = 80                                     # The port number for port 80.
port_443                           = 443                                    # The port number for port 443.
ssl                                = "SSL"                                  # The SSL protocol.
azurerm_lb_probe                   = "healthProbe44"                        # The name of the Azure load balancer probe.
az_lb_nat_rule_name                = "SSH"                                  # The name of the Azure load balancer NAT rule.
port_start                         = 50000                                  # The starting port number for the NAT rule.
port_end                           = 50010                                  # The ending port number for the NAT rule.
backend_port                       = 22                                     # The backend port number for the NAT rule.
source_port_range                  = ""                                     # The source port range for the NAT rule.
destination_port_range             = "22"                                   # The destination port range for the NAT rule.
source_address_prefix              = ""                                     # The source address prefix for the NAT rule.
destination_address_prefix         = "*"                                    # The destination address prefix for the NAT rule.
sku_capacity                       = 2                                      # The capacity of the SKU.
storage_profile_publisher          = "Canonical"                            # The publisher of the storage profile.
offer                              = "UbuntuServer"                         # The offer for the storage profile.
storage_sku                        = "16.04-LTS"                            # The SKU for the storage profile.
virsoning                          = "latest"                               # The versioning for the storage profile.
caching                            = "ReadWrite"                            # The caching type for the storage profile.
create_option                      = "FromImage"                            # The create option for the storage profile.
lun                                = 0                                      # The LUN number for the storage profile.
create_option_empty                = "Empty"                                # The create option for an empty disk.
disk_size_gb                       = 10                                     # The disk size in GB.
disable_password_authentication    = false                                  # Flag to disable password authentication.
primary                            = true                                   # Flag to set as the primary disk.
db_subnet_name                     = "db-sunetn44"                          # The name of the subnet which will be used by Azure MySQL database.
db_add_prefix                      = ["10.100.4.0/24"]                      # The address prefix for the subnet used by the Azure MySQL database.
service_endpoints                  = ["Microsoft.Storage"]                  # The service endpoints for the subnet.
delegation_name                    = "fs"                                   # The name of the delegation for the Azure MySQL flexible server.
service_delegation_name            = "Microsoft.DBforMySQL/flexibleServers" # The service delegation for the Azure MySQL flexible server.
private_dns_zone_name              = "44awsmysql.database.azure.com"        # The name of the private DNS zone for the Azure MySQL flexible server.
azurerm_mysql_flexible_server_name = "new-fs44"                             # The name of the Azure MySQL flexible server.
db_username                        = "psqladmin"                            # The username for the Azure MySQL database.
db_password                        = "H@Sh1CoR3!"                           # The password for the Azure MySQL database.
db_sku                             = "GP_Standard_D2ds_v4"                  # The SKU for the Azure MySQL database.


azurerm_mysql_flexible_database_name          = "exampledb"           # The name of the Azure MySQL Flexible Server database.
charset                                       = "utf8"                # The character set to use for the Azure MySQL Flexible Server database.
collation                                     = "utf8_unicode_ci"     # The collation to use for the Azure MySQL Flexible Server database.
azurerm_private_dns_zone_virtual_network_link = "exampleVnetZone.com" # The name of the virtual network link to the Azure Private DNS zone.