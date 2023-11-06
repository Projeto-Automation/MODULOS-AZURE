##  ----------  ( Documentação Output )  ----------  ##

output "id_machine" {
    value = azurerm_virtual_machine.machine_linux.id  
}

output "ip_machine" {
    value = azurerm_network_interface.interface_networks.private_ip_address
}

