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
