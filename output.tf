output "id" {
  description = "The virtual NetworkConfiguration ID."
  value       = "${azurerm_virtual_network.main.id}"
  sensitive = false
}

output "name" {
  description = "The name of the virtual network."
  value       = "${azurerm_virtual_network.main.name}"
  sensitive = false
}

output "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  value       = "${azurerm_virtual_network.main.resource_group_name}"
  sensitive = false
}

output "location" {
  description = "The location/region where the virtual network is created."
  value       = "${azurerm_virtual_network.main.location}"
  sensitive = false
}

output "address_space" {
  description = "The list of address spaces used by the virtual network."
  value       = "${azurerm_virtual_network.main.address_space}"
  sensitive = false
}

output "azure_subnet_id" {
    description = "Lists the ID's of the subnets"
    value = {
        for id in keys(var.subnet_prefix) : id => azurerm_subnet.main[id].id
    }
    sensitive = false
}