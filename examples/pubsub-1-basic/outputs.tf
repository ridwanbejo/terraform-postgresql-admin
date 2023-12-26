output "pg_publications" {
  description = "Current PostgreSQL publications"
  value       = module.tf_postgres_pubsub.postgres_publications
}