terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.39.0, < 5.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}
