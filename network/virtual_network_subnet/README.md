# MODULOS-AZURE

### MODULO CREATE VIRTUAL NETWORK + SUBNET
```
module "virtual_network_subnet" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE//virtual_network_subnet"
  
  resource_group_name   = ""
  virtual_network_name  = ""
  ip_network_virtual    = ""
  subnet_name           = ""
  ip_subnet             = ""
}
```