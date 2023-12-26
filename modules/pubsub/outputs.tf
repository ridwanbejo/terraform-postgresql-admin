output "postgres_publications" {
  description = "List of PostgreSQL publications"
  value       = { for item in postgresql_publication.publications : format("%s/%s", item.database, item.name) => item.tables }
}

output "postgres_subscriptions" {
  description = "List of PostgreSQL subscriptions"
  value       = { for item in postgresql_subscription.subscriptions : format("%s/%s", item.database, item.name) => item.publications }
}
