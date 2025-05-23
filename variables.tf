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

variable "tags" {
  type        = map(string)
  description = "Tags applied to resources"
  default     = {}
}
