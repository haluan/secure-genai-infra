output "resource_group_id" {
  value = module.resource_group.id
}

output "openai_endpoint" {
  value = module.openai_service.openai_endpoint
}

output "vnet_id" {
  value = module.virtual_network.vnet_id
}
