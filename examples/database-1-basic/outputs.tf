output "postgres_databases" {
  description = "Current PostgreSQL databases"
  value       = module.tf_postgres_database.postgres_databases
}

output "postgres_schemas" {
  description = "Current PostgreSQL schemas"
  value       = module.tf_postgres_database.postgres_schemas
}
