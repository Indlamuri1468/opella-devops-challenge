terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg-dev"
    storage_account_name = "tfstatedevstorage"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}