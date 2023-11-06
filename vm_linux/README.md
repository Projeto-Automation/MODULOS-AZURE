# MODULOS-AZURE
Repositório de módulos da AZURE

       Tabela shape
 _________________________________________________
 |  Cod. maquina   |  vcpu  |  GiB  | +/- R$/mês |
 | --------------- |------- | ----- | ---------- |
 | Standard_B1s    | 1      | 1     |    67,29   |
 | Standard_B2s    | 2      | 4     |   269,15   |
 |_________________|________|_______|____________|

### MODULO EXEMPLO

```
module "vm_linux_cent_os_7.5" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_cent_os_7.5"
  resource_group_name   = ""  #INFORME O NOME DO RESOURCE GROUP QUE A VM VAI SER CRIADA
  subnet_id             = ""  #INFORME O NOME DA SUBNET QUE A VM VAI SER CRIADA
  name_machine          = ""  #INFORME O NOME DA VM
  vm_size               = ""  #INFORME O SHAPE DA VM
  disk_size_gb          = ""  #INFORME O TAMANHO DO DISCO DA VM EM GBs
  admin_username        = ""  #INFORME O NOME DO USUARIO ADMIN
  admin_password        = ""  #INFORME A SENHA DO USUARIO ADMIN
}
```

### MODULO CREATE VM LINUX CENT OS 7.5
```
module "vm_linux_cent_os_7.5" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_cent_os_7.5"
  resource_group_name   = ""
  subnet_id             = ""
  name_machine          = ""
  vm_size               = ""
  disk_size_gb          = ""
  admin_username        = ""
  admin_password        = ""
}
```

### MODULO CREATE VM LINUX CENT OS 8.5
```
module "vm_linux_cent_os_8.5" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_cent_os_8.5"
  resource_group_name   = ""
  subnet_id             = ""
  name_machine          = ""
  vm_size               = ""
  disk_size_gb          = ""
  admin_username        = ""
  admin_password        = ""
}
```

### MODULO CREATE VM LINUX DEBIAN 10
```
module "vm_linux_debian_10" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_debian_10"
  resource_group_name   = ""
  subnet_id             = ""
  name_machine          = ""
  vm_size               = ""
  disk_size_gb          = ""
  admin_username        = ""
  admin_password        = ""
}
```

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

### MODULO CREATE VM LINUX UBUNTU 22.04 LTS
```
module "vm_linux_ubuntu_22.04_lts" {
  source                = "github.com/Projeto-Automation/MODULOS-AZURE/vm_linux//vm_linux_ubuntu_22.04_lts"
  resource_group_name   = ""
  subnet_id             = ""
  name_machine          = ""
  vm_size               = ""
  disk_size_gb          = ""
  admin_username        = ""
  admin_password        = ""
}
```