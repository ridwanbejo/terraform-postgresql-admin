module "tf_postgres_database" {
  source = "../../modules/database"

  databases  = local.databases
}
