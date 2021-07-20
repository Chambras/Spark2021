terraform {
  backend "remote" {
    organization = "zambrana"

    workspaces {
      name = "Spark2021-Infra"
    }
  }
  required_version = "= 1.0.2"
  required_providers {
    azurerm = "=2.67.0"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "genericRG" {
  name     = "${var.suffix}${var.rgName}"
  location = var.location
  tags     = var.tags
}
