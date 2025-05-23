output "openai_endpoint" {
  value       = azurerm_cognitive_account.openai.endpoint
  description = "Endpoint of the Azure OpenAI service"
}

output "openai_id" {
  value       = azurerm_cognitive_account.openai.id
  description = "Resource ID of the Azure OpenAI service"
}

output "openai_identity_principal_id" {
  value       = azurerm_cognitive_account.openai.identity[0].principal_id
  description = "Principal ID of the assigned identity"
}
