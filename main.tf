resource "azurerm_resource_group" "rg" {
  name     = "tf-example-rg"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
  name                = "tf-example-storage"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  account_tier        = "Standard_LRS"
  account_replication_type = "LRS"
}

resource "azurerm_container_registry" "acr" {
  name                = "tf-example-acr"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku {
    name = "Standard"
  }
}

resource "azurerm_public_ip_address" "pip" {
  name                = "tf-example-pip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method  = "Dynamic"
}

resource "azurerm_app_service_plan" "asp" {
  name                = "tf-example-asp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku {
    tier = "Free"
    size = "F1"
  }
}
