resource "azurerm_cognitive_account" "openai" {
  name                = var.openai_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "OpenAI"
  sku_name            = var.sku_name

  custom_subdomain_name = var.custom_subdomain_name

  identity {
    type = "SystemAssigned"
  }

  public_network_access_enabled = var.public_network_access_enabled

  dynamic "network_acls" {
    for_each = var.public_network_access_enabled && length(var.allowed_virtual_network_subnet_ids) > 0 ? [1] : []
    content {
      default_action             = "Deny"
      virtual_network_subnet_ids = var.allowed_virtual_network_subnet_ids
    }
  }

  tags = var.tags
}
