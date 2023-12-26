output "postgres_roles" {
  description = "List of PostgreSQL roles"
  value       = [ for item in postgresql_role.roles : item.name ]
}

output "postgres_default_privileges" {
  description = "List of PostgreSQL default privilages"
  value       = { for item, key in postgresql_default_privileges.default_privileges : format("%s/%s/%s", item.database, item.role, item.schema ) => item.privileges }
}