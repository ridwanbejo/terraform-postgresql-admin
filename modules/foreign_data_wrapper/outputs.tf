output "postgres_fdw_servers" {
  description = "List of PostgreSQL FDW servers"
  value       = [ for item in postgresql_server.fdw_servers : format("%s/%s", item.server_name, item.fdw_name) ]
}

output "postgres_fdw_user_mappings" {
  description = "List of PostgreSQL FDW user mappings"
  value       = [ for item in postgresql_user_mapping.fdw_user_mappings : format("%s/%s", item.user_name, item.server_name) ]
}
