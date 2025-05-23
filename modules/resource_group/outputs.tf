output "id" {
  description = "The ID of the Resource Group"
  value       = azurerm_resource_group.rg.id
}

output "name" {
  description = "The name of the Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "The Azure region of the Resource Group"
  value       = azurerm_resource_group.rg.location
}
