output "pg_grants" {
  description = "Current PostgreSQL grants"
  value       = module.tf_postgres_grant.postgres_grants
}

output "pg_grant_roles" {
  description = "Current PostgreSQL grant roles"
  value       = module.tf_postgres_grant.postgres_grant_roles
}
