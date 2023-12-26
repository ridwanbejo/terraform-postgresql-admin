module "tf_postgres_grant" {
  source      = "../../modules/grant"
  grants      = var.pg_grants
  grant_roles = var.pg_grant_roles
}
