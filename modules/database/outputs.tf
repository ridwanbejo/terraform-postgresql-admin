output "postgres_databases" {
  description = "List of PostgreSQL databases"
  value       = { for item in postgresql_database.databases : item.name => item.owner }
}

output "postgres_schemas" {
  description = "List of PostgreSQL schemas"
  value       = { for item in postgresql_schema.schemas : format("%s/%s", item.database, item.name) => item.owner }
}
