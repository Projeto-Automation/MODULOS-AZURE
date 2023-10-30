##  ----------  ( Documentação Variaveis )  ----------  ##

variable "location" {
    type = string  
}

variable "resource_group_name" {
    type = string  
}

#  ----  Variaveis

variable "name_machine" {
    type = string  
}

variable "vm_size" {
    type = string  
}

#  ----  Variaveis disco

variable "caching" {
    type = string
    default = "ReadWrite"  
}

variable "create_option" {
    type = string
    default = "Attach"  
}

variable "disk_size_gb" {
    type = number  
}

variable "managed_disk_type" {
    type = string
    default = "Standard_LRS"  
}

variable "admin_username" {
    type = string  
}

variable "admin_password" {
    type = string  
}

variable "key_data" {
    type = string
}

variable "subnet_id" {
    type = string
}
