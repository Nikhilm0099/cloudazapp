output "azurrlb_pub_ip" {
  value = azurerm_public_ip.example.id
}

output "loac_balancer_id" {
  value = azurerm_lb.example.id

}

output "backend_p_id" {
  value = azurerm_lb_backend_address_pool.example.id
}