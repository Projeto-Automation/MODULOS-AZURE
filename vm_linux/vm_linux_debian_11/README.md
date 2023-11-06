### MODULO CREATE VM LINUX DEBIAN 11
```
module "vm_linux_debian_11" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_debian_11"
  resource_group_name   = ""
  subnet_id             = ""
  name_machine          = ""
  vm_size               = ""
  disk_size_gb          = ""
  admin_username        = ""
  admin_password        = ""
}
```