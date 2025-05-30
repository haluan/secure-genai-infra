module "resource_group" {
    source   = "./modules/resource_group"
    name     = var.resource_group_name
    location = var.location
    tags     = var.tags
}

module "openai_service" {
    source                                = "./modules/openai_service"
    openai_name                           = var.openai_name
    resource_group_name                   = module.resource_group.name
    location                              = var.location
    sku_name                              = var.openai_sku
    custom_subdomain_name                 = var.openai_custom_subdomain
    public_network_access_enabled         = var.openai_public_network_access_enabled
    allowed_virtual_network_subnet_ids    = var.openai_allowed_virtual_network_subnet_ids
    tags                                  = var.tags
}

module "virtual_network" {
    source                  = "./modules/virtual_network"
    vnet_name               = var.vnet_name
    resource_group_name     = module.resource_group.name
    location                = var.location
    address_space           = var.vnet_address_space
    subnet_name             = var.subnet_name
    subnet_address_prefixes = var.subnet_address_prefixes
    tags                    = var.tags
}

module "key_vault" {
    source              = "./modules/key_vault"
    key_vault_name      = var.key_vault_name
    resource_group_name = module.resource_group.name
    location            = var.location
    tenant_id           = var.tenant_id
    object_id           = var.object_id
    tags                = var.tags
}
