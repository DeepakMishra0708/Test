terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }

  }
#     backend "azurerm" {
#     resource_group_name  = "rg-terraform-state"
#     storage_account_name = "tfstateaccount123"
#     container_name       = "tfstate"
#     key                  = "prod.terraform.tfstate"
#   }
 }

provider "azurerm" {
  features {}

}