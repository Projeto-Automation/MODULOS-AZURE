### MODULO CREATE VM LINUX CENT OS 8.5
```
module "vm_linux_cent_os_8_5" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_cent_os_8_5"
  resource_group_name   = ""
  subnet_id             = ""
  name_machine          = ""
  vm_size               = ""
  disk_size_gb          = ""
  admin_username        = ""
  admin_password        = ""
}
```