##  ----------  ( Documentação Output )  ----------  ##

output "id_virtual_network" {
    value = azurerm_virtual_network.virtual_network.id  
}

output "id_subnet" {
    value = azurerm_subnet.subnet.id  
}

output "id_security_list" {
    value = azurerm_network_security_group.security_group.id  
}