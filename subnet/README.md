# MODULOS-AZURE

### MODULO CREATE SUBNET
```
module "vm_linux" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/tree/main//subnet"
  
  name                  = ""
  resource_group_name   = ""
  virtual_network_name  = ""
  ip_subnet             = ""
  security_group_id     = ""
}
```