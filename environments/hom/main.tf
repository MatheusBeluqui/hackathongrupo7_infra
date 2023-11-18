module "cloud_sql_hom" {
  source     = "../modules/cloud_sql"
  db_name    = "app-database-hom"
  region     = "us-west1"  # Altere conforme sua região
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = "admin_password"
}
