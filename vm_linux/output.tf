##  ----------  ( Documentação Output )  ----------  ##

output "id_machine" {
    value = azurerm_virtual_machine.machine_linux.id  
}

output "nome_machine" {
    value = azurerm_virtual_machine.machine_linux.name
}

