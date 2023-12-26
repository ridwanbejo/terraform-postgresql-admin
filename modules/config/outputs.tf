output "postgres_extensions" {
  description = "List of PostgreSQL extensions"
  value       = [ for item in postgresql_extension.extensions : format("%s/%s", item.database, item.name) ]
}

output "postgres_replication_slots" {
  description = "List of PostgreSQL replication slots"
  value       = { for item in postgresql_replication_slot.slots : format("%s/%s", item.database, item.name) => item.plugin}
}

output "postgres_physical_replication_slots" {
  description = "List of PostgreSQL physical replication slots"
  value       = [ for item in postgresql_physical_replication_slot.physical_slots : item.name ]
}

