output "postgres_roles" {
  description = "Current PostgreSQL roles"
  value       = module.tf_postgres_role.postgres_roles
}

