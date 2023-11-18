variable "db_name" {
  description = "Nome do banco de dados no Cloud SQL"
}

variable "region" {
  description = "Região para o Cloud SQL"
}

variable "tier" {
  description = "Nível do serviço para o Cloud SQL"
}

variable "admin_user" {
  description = "Nome do usuário administrador do banco de dados"
}

variable "admin_pass" {
  description = "Senha do usuário administrador do banco de dados"
}

resource "google_sql_database_instance" "cloud_sql_instance" {
  name             = var.db_name
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = var.tier
  }

  deletion_protection = false
}
