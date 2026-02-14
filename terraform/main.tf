
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"    # means any 4.x version but not 5.0
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "52de897e-d8db-4596-ba6a-0c3a33868252"
}