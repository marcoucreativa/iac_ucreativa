terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "infra-control-rg"
    storage_account_name = "ucreativaiac"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "linux-server" {
  source           = "./Lab01/modules/servers"
  LINUX_PASSWORD   = var.LINUX_PASSWORD
  linux-user       = "adminfrb03"
  environment      = "dev"
  cantidad-servers = 1
}