module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.resorce_variables

}
module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_storage_account"
  sa         = var.storage_account
}
module "virtuals_networks" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_virtual_networks"
  vnt        = var.virtulnetworks
}

module "subnets" {
  depends_on = [module.virtuals_networks]
  source     = "../../modules/azurerm_subnet"
  sub_net    = var.subnets
}


module "pip" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_public_ip"
  pip        = var.pip

}




module "virtual_machines" {
    depends_on = [module.subnets, module.pip]
    source     = "../../modules/azurerm_virtual_machine"
    vm       = var.vm
  }