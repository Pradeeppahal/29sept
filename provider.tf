terraform {
  backend "azurerm" {
    resource_group_name  = "aaa-rg"
    storage_account_name = "stg111a"
    container_name       = "container111a"
    key                  = "key.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.44.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "dfad8f6a-4ed1-4448-b795-d396ad2c60db"
}