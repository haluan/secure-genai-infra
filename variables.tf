variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
}

variable "openai_name" {
  type        = string
  description = "Name of Azure OpenAI Service"
}

variable "openai_sku" {
  type        = string
  description = "SKU for Azure OpenAI Service"
}

variable "openai_custom_subdomain" {
  type        = string
  description = "Custom subdomain for Azure OpenAI Service"
}

variable "openai_public_network_access_enabled" {
  type        = bool
  description = "Whether public network access is enabled for the Azure OpenAI service. Defaults to false."
  default     = false
}

variable "openai_allowed_virtual_network_subnet_ids" {
  type        = list(string)
  description = "List of virtual network subnet IDs to allow access from to the Azure OpenAI service when public_network_access_enabled is true."
  default     = []
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet within the virtual network"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes for the subnet"
}

variable "key_vault_name" {
  type        = string
  description = "Name of the Azure Key Vault"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID for Azure Key Vault"
}

variable "object_id" {
  type        = string
  description = "Object ID for Key Vault access policy (e.g., user or service principal ID)"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to resources"
  default     = {}
}
