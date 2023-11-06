##  ----------  ( Documentação MAIN )  ----------  ##

#  ----  Virtual Network

resource "azurerm_virtual_network" "virtual_network" {
    name                = var.virtual_network_name
    location            = data.azurerm_resource_group.resource_group.location
    resource_group_name = data.azurerm_resource_group.resource_group.name
    address_space       = [var.ip_network_virtual]  
}

resource "azurerm_subnet" "subnet" {
    name                  = var.subnet_name
    virtual_network_name  = azurerm_virtual_network.virtual_network.name
    resource_group_name   = data.azurerm_resource_group.resource_group.name
    address_prefixes      = [var.ip_subnet]  
}

resource "azurerm_subnet_network_security_group_association" "subnet_association" {
    subnet_id                 = azurerm_subnet.subnet.id
    network_security_group_id = azurerm_network_security_group.security_group.id
}

#  ----  Security

resource "azurerm_network_security_group" "security_group" {
  name                = "Security_Group - ${var.virtual_network_name}"
  location            = data.azurerm_resource_group.resource_group.location
  resource_group_name = data.azurerm_resource_group.resource_group.name

  security_rule {
    name                       = "SSH"
    priority                   = "200"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "UDP"
    priority                   = "300"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_port_range          = "*"
    destination_port_range     = "5900"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "Saida"
    priority                   = "100"
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

#  ----  DATA

data "azurerm_resource_group" "resource_group" {
    name = var.resource_group_name
}