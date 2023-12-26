resource "random_password" "password" {
  for_each = { for idx, item in var.roles : item.name => item }

  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "postgresql_role" "roles" {
  for_each = { for key, item in var.roles : item.name => item }

  name             = each.value.name
  password         = random_password.password[each.value.name].result
  login            = each.value.login
  replication      = each.value.replication
  superuser        = each.value.superuser
  create_database  = each.value.create_database
  create_role      = each.value.create_role
  inherit          = each.value.inherit
  connection_limit = each.value.connection_limit
  search_path      = each.value.search_path
  valid_until      = each.value.valid_until
  assume_role      = each.value.assume_role
  roles            = each.value.roles

  skip_drop_role      = each.value.skip_drop_role
  skip_reassign_owned = each.value.skip_reassign_owned
  statement_timeout   = each.value.statement_timeout
  encrypted_password  = each.value.encrypted_password
  
  bypass_row_level_security = each.value.bypass_row_level_security

  depends_on = [random_password.password]
}

resource "postgresql_default_privileges" "default_privileges" {
  for_each = { for key, item in var.default_privileges : item.name => item }
  
  role = each.value.role
  database = each.value.database
  owner = each.value.owner
  object_type = each.value.object_type
  privileges = each.value.privileges
  schema = each.value.schema
}