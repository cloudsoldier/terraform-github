provider "azurerm" {
  features {}

  use_oidc = true
  client_id       = var.client_id
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-storage-account"
  location = "uksouth"
}

resource "azurerm_storage_account" "storage" {
  name                     = "terraformstorage123"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

variable "client_id" {}
variable "tenant_id" {}
variable "subscription_id" {}
