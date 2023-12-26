module "tf_postgres_fdw" {
  source            = "../../modules/foreign_data_wrapper"
  fdw_servers       = var.pg_fdw_servers
  fdw_user_mappings = var.pg_user_mappings
}
