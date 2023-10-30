# MODULOS-AZURE
Repositório de módulos da AZURE

       Tabela shape
 ______________________________________________
 |  Cod. maquina   |  vcpu  |  GiB  |  R$/mês |
 | --------------- |------- | ----- | ------- |
 | Standard_B1s    | 1      | 1     |  67,29  |
 | Standard_B2s    | 2      | 4     | 269,15  |
 |_________________|________|_______|_________|

# MODULO CREATE VM LINUX UBUNTU 22.04
```
module "vm_linux" {
  source = "github.com/Projeto-Automation/MODULOS-AZURE/tree/main/vm_linux"
  location = ""
  resource_group_name = ""
  subnet_id = ""
  name_machine = ""
  vm_size = ""
  disk_size_gb = ""
  admin_username = ""
  admin_password = ""
  key_data = "/chaves/public"
}
```
