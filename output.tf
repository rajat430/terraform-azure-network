output "nsg_ids" {
  description = "nsg_ids"
  value       =  [ for subnet in var.subnet_details: azurerm_network_security_group.example[subnet.name].id ]
}
