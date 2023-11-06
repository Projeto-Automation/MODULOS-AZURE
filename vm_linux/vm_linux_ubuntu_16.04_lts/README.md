### MODULO CREATE VM LINUX UBUNTU 16.04 LTS
```
module "vm_linux_ubuntu_16.04_lts" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_ubuntu_16.04_lts"
  resource_group_name   = ""
  subnet_id             = ""
  name_machine          = ""
  vm_size               = ""
  disk_size_gb          = ""
  admin_username        = ""
  admin_password        = ""
}
```