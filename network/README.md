# MODULOS-AZURE

## MODULOS DE NETWORK

### MODULO CREATE SUBNET

    - Esse modulo cria uma subnet anexada a uma virtual network já existente.

```
module "subnet" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/network//subnet"
  
  name                  = ""
  resource_group_name   = ""
  virtual_network_name  = ""
  ip_subnet             = ""
  security_group_id     = ""
}
```

### MODULO CREATE VIRTUAL NETWORK + SUBNET

    - Esse modulo cria uma Virtual Network e cria uma Subnet anexada.

```
module "virtual_network_subnet" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/network//virtual_network_subnet"
  
  resource_group_name   = ""
  virtual_network_name  = ""
  ip_network_virtual    = ""
  subnet_name           = ""
  ip_subnet             = ""
}
```