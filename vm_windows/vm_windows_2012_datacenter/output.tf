##  ----------  ( Documentação Output )  ----------  ##

output "id_vm_windows" {
    value = azurerm_virtual_machine.machine_windows.id  
}

output "ip_vm_windows" {
    value = azurerm_network_interface.interface_networks.private_ip_address
}