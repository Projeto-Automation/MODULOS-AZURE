##  ----------  ( Documentação Main )  ----------  ##

resource "azurerm_subnet" "subnet" {
    name                    = var.name
    resource_group_name     = var.resource_group_name
    virtual_network_name    = var.virtual_network_name
    address_prefixes        = [var.ip_subnet]  
}

resource "azurerm_subnet_network_security_group_association" "subnet_association" {
    subnet_id                 = azurerm_subnet.subnet.id
    network_security_group_id = var.security_group_id
}
