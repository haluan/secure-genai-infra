variable "openai_name" {
  type        = string
  description = "Name of the Azure OpenAI service"
}

variable "location" {
  type        = string
  description = "Azure region where the service is deployed"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for the OpenAI service"
}

variable "sku_name" {
  type        = string
  description = "SKU of the Azure OpenAI service"
  default     = "S0"
}

variable "custom_subdomain_name" {
  type        = string
  description = "Custom subdomain name for Azure OpenAI"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the Azure OpenAI service"
  default     = {}
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether public network access is enabled for the Azure OpenAI service. Defaults to false."
  default     = false
}

variable "allowed_virtual_network_subnet_ids" {
  type        = list(string)
  description = "List of virtual network subnet IDs to allow access from when public_network_access_enabled is true. If public_network_access_enabled is true and this list is empty, no network ACLs are applied, allowing all public traffic. If public_network_access_enabled is true and subnets are provided, default_action is Deny and only these subnets are allowed."
  default     = []
}
