##  ----------  ( Documentação Variaveis )  ----------  ##

variable "resource_group_name" {
    type = string
    description = "Resource grupe que a maquina vai ser criada"
}

variable "vm_name" {
    type = string  
    description = "Nome da maquina"
}

variable "subnet_id" {
    type = string  
    description = "ID da Subnet"
}

variable "vm_size" {
    type = string 
    description = "Shape que a maquina vai ser criada" 
}

variable "disk_size_gb" {
    type = number  
    description = "Tamanho do disco em GB"
}

variable "managed_disk_type" {
    type = string  
    description = "Tipo do disco ( Standard_LRS / StandardSSD_LRS / Premium_LRS"
}

variable "admin_username" {
    type = string
    description = "Nome do usuario admin"
}

variable "admin_password" {
    type = string  
    description = "Senha do usuario admin"
}

variable "enable_automatic_upgrades" {
    type = bool  
    description = "Habilitar upgrades automaticos ( true / false )"
}

#  -------------------------  #
#  ----  Não editaveis  ----  #

variable "caching" {
    type = string
    default = "ReadWrite"
}

variable "create_option" {
    type = string
    default = "FromImage"  
}