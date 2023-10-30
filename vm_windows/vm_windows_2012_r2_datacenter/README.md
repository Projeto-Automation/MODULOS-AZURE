# MODULOS-AZURE
Repositório de módulos da AZURE

       Tabela shape
 ______________________________________________
 |  Cod. maquina   |  vcpu  |  GiB  |  R$/mês |
 | --------------- |------- | ----- | ------- |
 | Standard_B1s    | 1      | 1     |  67,29  |
 | Standard_B2s    | 2      | 4     | 269,15  |
 |_________________|________|_______|_________|

### MODULO CREATE VM WINDOWS SERVER 2012 R2 DATACENTER
```
module "vm_windows_2012_r2_datacenter" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_windows//vm_windows_2012_r2_datacenter"

  resource_group_name       = ""
  subnet_id                 = ""
  vm_name                   = ""
  vm_size                   = ""
  disk_size_gb              = ""
  maneded_disk_type         = ""
  admin_username            = ""
  admin_password            = ""
  enable_automatic_upgrades = ""
}
```