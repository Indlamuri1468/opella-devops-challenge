terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg-prod"
    storage_account_name = "tfstateprodstorage"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }

}