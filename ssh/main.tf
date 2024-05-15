data "vault_generic_secret" "secrets" {
    path = var.path_vault
}
resource "guacamole_connection_ssh" "connection_ssh" {
    name = var.nome_vm
    parent_identifier = var.nome_raiz
    attributes {
        guacd_hostname  = var.guacd_hostname
        guacd_port      = var.guacd_port
    }
    parameters {
        hostname = data.vault_generic_secret.secrets.data["hostname"]
        username = data.vault_generic_secret.secrets.data["username"]
        password = data.vault_generic_secret.secrets.data["password"]
        port     = data.vault_generic_secret.secrets.data["port"]
        recording_path = data.vault_generic_secret.variaveis_ambiente.data["path_record"]
        recording_name = data.vault_generic_secret.variaveis_ambiente.data["name_record"]
        sftp_enable = true
    }
}
