resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "vnet" {
  source              = "../child/modules/vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  subnet_prefix       = var.subnet_prefix
}

module "nic" {
  source              = "../child/modules/nic"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  nic_name            = var.nic_name
  subnet_id           = module.vnet.subnet_id
}

module "storage" {
  source                   = "../child/modules/storage"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication
}

module "vm" {
  source              = "../child/modules/vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  nic_ids             = [module.nic.nic_id]
}
