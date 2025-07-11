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