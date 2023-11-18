variable "db_name" {}
variable "region" {}
variable "tier" {}
variable "admin_user" {}
variable "admin_pass" {}

resource "google_sql_database_instance" "cloud_sql_instance" {
  name             = "cloud-sql-instance"
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = var.tier
  }
}

resource "google_sql_database" "cloud_sql_db" {
  name     = var.db_name
  instance = google_sql_database_instance.cloud_sql_instance.name

  charset   = "utf8mb4"
  collation = "utf8mb4_unicode_ci"
}

resource "google_sql_user" "cloud_sql_user" {
  name     = var.admin_user
  instance = google_sql_database_instance.cloud_sql_instance.name
  password = var.admin_pass
}
