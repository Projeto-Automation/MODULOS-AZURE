##  ----------  ( Documentação Network )  ----------  ##

#  --  Network Interface  --  #

resource "azurerm_network_interface" "interface_networks" {
  name                = "${var.vm_name}_NIC"
  location            = data.azurerm_resource_group.resource_group.location
  resource_group_name = data.azurerm_resource_group.resource_group.name

  ip_configuration {
    name                          = "${var.vm_name}_IP_config"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

##  ----------  ( Documentação Virtual Machine )  ----------  ##

#  --  Machine Windows  --  #

resource "azurerm_virtual_machine" "machine_windows" {
  name                  = var.vm_name                                           # Nome da maquina
  location              = data.azurerm_resource_group.resource_group.location   # Localização que a maquina vai ser criada
  resource_group_name   = data.azurerm_resource_group.resource_group.name       # Resource grupe que a maquina vai ser criada
  network_interface_ids = [azurerm_network_interface.interface_networks.id]     # Interface network
  vm_size               = var.vm_size                                           # Shape que a maquina vai ser criada

  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"    # Editor da ISO
    offer     = "WindowsServer"             # Oferta da ISO
    sku       = "2012-R2-Datacenter"        # SKU da ISO
    version   = "latest"                    # Versão da ISO
  }

  storage_os_disk {
    name              = "${var.vm_name}_disk"   # Nome do disco
    caching           = var.caching             # Especifique os requisitos de cache ( None / ReadOnly / ReadWrite )
    create_option     = var.create_option       # Especifique como o disco vai ser criado ( Attach  / FromImage )
    disk_size_gb      = var.disk_size_gb        # Especifique o tamanho do disco em GB
    managed_disk_type = var.managed_disk_type   # Especifique o tipo do disco ( Standard_LRS / StandardSSD_LRS / Premium_LRS )
  }

  os_profile {
    computer_name  = var.vm_name  # Nome da maquina virtual
    admin_username = var.admin_username # Nome do usuario admin
    admin_password = var.admin_password # Senha do usuario admin
  }

  os_profile_windows_config {
    enable_automatic_upgrades = var.enable_automatic_upgrades   # Habilitar upgrades automaticos ( true / false )
  }

}

#  --  Data Resource Group  --  #

data "azurerm_resource_group" "resource_group" {
    name = var.resource_group_name
}
