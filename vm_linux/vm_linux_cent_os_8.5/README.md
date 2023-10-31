# MODULOS-AZURE
Repositório de módulos da AZURE

       Tabela shape
 ______________________________________________
 |  Cod. maquina   |  vcpu  |  GiB  |  R$/mês |
 | --------------- |------- | ----- | ------- |
 | Standard_B1s    | 1      | 1     |  67,29  |
 | Standard_B2s    | 2      | 4     | 269,15  |
 |_________________|________|_______|_________|

### MODULO CREATE VM LINUX CENT OS 8.5
```
module "vm_linux_cent_os_8.5" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_cent_os_8.5"
  location              = ""
  resource_group_name   = ""
  subnet_id             = ""
  name_machine          = ""
  vm_size               = ""
  disk_size_gb          = ""
  admin_username        = ""
  admin_password        = ""
}
```