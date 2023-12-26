output "postgres_grants" {
  description = "List of PostgreSQL grants"
  value       = { for item in postgresql_grant.grants : format("%s/%s/%s", item.database, item.role, item.object_type) => item.privileges }
}

output "postgres_grant_roles" {
  description = "List of PostgreSQL grant roles"
  value       = { for item in postgresql_grant_role.grant_roles : item.role => item.grant_role }
}
