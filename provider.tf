terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.26.0"
    }
  }
}
provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    storage_account_name = "tfstateps"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
    access_key = "ILf4iUNro9gZkEGoS19+l/wnt3OQnnmdT52dRJO794O42V/zgchdcU1un6t7mePy1nOVA8MO9gKy+AStopEIbg=="
  }
}