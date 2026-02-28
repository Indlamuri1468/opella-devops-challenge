module "vnet" {
  source = "../../modules/vnet"

  resource_group_name = "rg-dev-network"
  location            = "East US"
  vnet_name           = "vnet-dev"

  address_space = ["10.0.0.0/16"]

  subnets = {
    web  = ["10.0.1.0/24"]
    app  = ["10.0.2.0/24"]
    db   = ["10.0.3.0/24"]
  }
}