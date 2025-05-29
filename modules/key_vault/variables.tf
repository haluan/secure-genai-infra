variable "key_vault_name" {
  type        = string
  description = "Name of the Azure Key Vault"
}

variable "location" {
  type        = string
  description = "Azure region for the Key Vault"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name to host Key Vault"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID associated with the Key Vault"
}

variable "sku_name" {
  type        = string
  description = "SKU for Azure Key Vault"
  default     = "standard"
}

variable "soft_delete_retention_days" {
  type        = number
  description = "Retention period for soft delete in days"
  default     = 7
}

variable "purge_protection_enabled" {
  type        = bool
  description = "Enable purge protection"
  default     = true
}

variable "object_id" {
  type        = string
  description = "Object ID for access policy (usually your user or service principal)"
}

variable "key_permissions" {
  type        = list(string)
  description = "Permissions for managing keys"
  default     = ["get", "create", "delete", "list", "update"]
}

variable "secret_permissions" {
  type        = list(string)
  description = "Permissions for managing secrets"
  default     = ["get", "set", "delete", "list"]
}

variable "certificate_permissions" {
  type        = list(string)
  description = "Permissions for managing certificates"
  default     = ["get", "create", "delete", "list"]
}

variable "tags" {
  type        = map(string)
  description = "Tags for Azure Key Vault"
  default     = {}
}
