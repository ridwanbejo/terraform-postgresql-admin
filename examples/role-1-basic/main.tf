module "tf_postgres_role" {
  source             = "../../modules/role"
  roles              = local.roles
  default_privileges = []
}
