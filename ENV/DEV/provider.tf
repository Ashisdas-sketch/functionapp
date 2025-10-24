terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
backend "azurerm" {}
}

provider "azurerm" {
  features {}
  subscription_id = "1dd58551-b1ab-46ef-9957-b05198450f53"
}
