terraform {
  required_version = ">= 1.5.0"

  backend "remote" {
    organization = "YOUR_TF_ORG"

    workspaces {
      name = "azure-dev"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
