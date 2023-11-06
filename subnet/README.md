# MODULOS-AZURE

### MODULO CREATE SUBNET
```
module "subnet" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE//subnet"
  
  name                  = ""
  resource_group_name   = ""
  virtual_network_name  = ""
  ip_subnet             = ""
  security_group_id     = ""
}
```