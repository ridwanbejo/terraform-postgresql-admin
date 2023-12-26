output "postgres_extension" {
  description = "Current PostgreSQL Extensions"
  value       = module.tf_postgres_config.postgres_extensions
}

