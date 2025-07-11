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
resource "azurerm_storage_account" "sgticket122" {
    name = "sg122"
    resource_group_name = "rg121"
    location = "central india"
    account_tier = "Standard"
    account_replication_type = "GRS"
}