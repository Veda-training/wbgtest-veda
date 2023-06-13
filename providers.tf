terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.60.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "veda-rg"
    storage_account_name = "vedaterraformlab"
    container_name       = "veda-container"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  # Configuration options
  feature {}
}
