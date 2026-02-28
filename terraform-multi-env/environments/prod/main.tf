module "vnet" {
  source = "../../modules/vnet"

  resource_group_name = "rg-prod-network"
  location            = "East US"
  vnet_name           = "vnet-prod"

  address_space = ["10.10.0.0/16"]

  subnets = {
    web  = ["10.10.1.0/24"]
    app  = ["10.10.2.0/24"]
    db   = ["10.10.3.0/24"]
  }
}