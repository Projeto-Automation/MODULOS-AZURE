data "vault_generic_secret" "variaveis_ambiente_teste" {
    path = "guacamole/variaveis_ambiente"
}

data "vault_generic_secret" "teste_secrets" {
    path = var.path_vault
}

resource "guacamole_connection_ssh" "teste_connection_ssh" {
    name = var.nome_vm
    parent_identifier = var.nome_raiz
    attributes {
        guacd_hostname  = var.guacd_hostname
        guacd_port      = var.guacd_port
    }
    parameters {
        hostname = data.vault_generic_secret.teste_secrets.data["hostname"]
        username = data.vault_generic_secret.teste_secrets.data["username"]
        password = data.vault_generic_secret.teste_secrets.data["password"]
        port     = data.vault_generic_secret.teste_secrets.data["port"]
        recording_path = data.vault_generic_secret.variaveis_ambiente_teste.data["path_record"]
        recording_name = data.vault_generic_secret.variaveis_ambiente_teste.data["name_record"]
        sftp_enable = true
    }
}
