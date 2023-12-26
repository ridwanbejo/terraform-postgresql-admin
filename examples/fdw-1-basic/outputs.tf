output "pg_fdw_servers" {
  description = "Current PostgreSQL FDW servers"
  value       = module.tf_postgres_fdw.postgres_fdw_servers
}

output "pg_user_mappings" {
  description = "Current PostgreSQL FDW user mappings"
  value       = module.tf_postgres_fdw.postgres_fdw_user_mappings
}