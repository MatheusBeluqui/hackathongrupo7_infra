module "cloud_sql_prd" {
  source     = "../modules/cloud_sql"
  db_name    = "app-database-prd"
  region     = "us-west1"
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = "admin_password"
}
