terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.13.0"
    }
  }
  }
provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "PUT-YOUR_SUB-ID"
}


resource "azurerm_resource_group" "RG" {
count =10 #This value will create 10 RG
name = "Student-${count.index}"
location = "West Europe"
desription = "test"
}
