
terraform {
  required_version = ">= 1.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }

    azapi = {
      source  = "Azure/azapi"
      version = "~> 1.12"
    }
  }
}

provider "azapi" {}

provider "azurerm" {
  features {}
}

# Subscription 1
provider "azurerm" {
  alias           = "sub1"
  subscription_id = var.subscriptions["sub1"].subscription_id
  features {}
}

# Subscription 2
provider "azurerm" {
  alias           = "sub2"
  subscription_id = var.subscriptions["sub2"].subscription_id
  features {}
}

