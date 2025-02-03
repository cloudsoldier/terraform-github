terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  use_oidc = true
  client_id       = var.client_id
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

variable "client_id" {}
variable "tenant_id" {}
variable "subscription_id" {}
