resource "azurerm_resource_group" "rg" {
  name     = "tf-example-rg"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
  name                = "proj6sa"
  resource_group_name = "your-resource-group-name"
  location            = "East US"
  account_tier        = "Standard_LRS"
  account_replication_type = "LRS"
}
