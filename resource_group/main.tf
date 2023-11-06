##  ----------  ( Documentação Main )  ----------  ##

resource "azurerm_resource_group" "resource_group" {
    name        = var.name_resource_group
    location    = var.location_resource_group  
}