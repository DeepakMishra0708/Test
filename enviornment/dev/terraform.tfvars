resorce_variables = {
  rg1 = {
    name     = "rg-1"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg-2"
    location = "centralindia"
  }
}

storage_account = {
  sa_1 = {
    name                     = "storagchutccountmera1"
    location                 = "centralindia"
    resource_group_name      = "rg-1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}


virtulnetworks = {
  vnet1 = {
    name                = "vnet-1"
    location            = "centralindia"
    resource_group_name = "rg-1"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  subnets_1 = {
    name                 = "fronend_subnet"
    resource_group_name  = "rg-1"
    virtual_network_name = "vnet-1"
  address_prefixes = ["10.0.1.0/24"] }

  subnets_2 = {
    name                 = "backend_subnet"
    resource_group_name  = "rg-1"
    virtual_network_name = "vnet-1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pip = {
  pip-1 = {
    name                = "pip-frontend-vm"
    location            = "centralindia"
    resource_group_name = "rg-1"
  }
  pip-2 = {
    name                = "pip-backend-vm"
    location            = "centralindia"
    resource_group_name = "rg-1"
  }
}

vm = {
  vm1 = {
    nic_name            = "frontend-vm-nic-1"
    location            = "centralindia"
    resource_group_name = "rg-1"
    nic_subnet_name     = "fronend_subnet"
    nic_vnet_name       = "vnet-1"
    nic_public_ip_name  = "pip-frontend-vm"
    vm_name             = "frontend-vm"
    vm_size             = "Standard_B2as_v2"
    admin_username      = "devopsadmin"
    admin_password      = "DevOps@123"
    image_publisher     = "Canonical"
    image_offer         = "0001-com-ubuntu-server-jammy"
    image_sku           = "22_04-lts" # SKU (Stock Keeping Unit) is a unique identifier that specifies the configuration, size, or edition of an Azure resource.
    image_version       = "latest"
  }
  vm2 = {
    nic_name            = "backend-vm-nic-1"
    location            = "centralindia"
    resource_group_name = "rg-1"
    nic_subnet_name     = "backend_subnet"
    nic_vnet_name       = "vnet-1"
    nic_public_ip_name  = "pip-backend-vm"
    vm_name             = "backend-vm"
    vm_size             = "Standard_B2as_v2"
    admin_username      = "devopsadmin"
    admin_password      = "DevOps@123"
    image_publisher     = "Canonical"
    image_offer         = "0001-com-ubuntu-server-jammy"
    image_sku           = "22_04-lts" # SKU (Stock Keeping Unit) is a unique identifier that specifies the configuration, size, or edition of an Azure resource.
    image_version       = "latest"
  }

}