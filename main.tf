resource "azurerm_resource_group" "rg-test-repo" {
    name = "testrepo"
    location = "west us"
  
}
resource "azurerm_resource_group" "rg-ticket121" {
    name = var.rg_name
    location = var.rg_location
}
variable "rg_name" {
    default = "rg121"
}
variable "rg_location" {
    default = "central india"
}

resource "azurerm_virtual_network" "vnetticket123" {
  name                = "example-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}
