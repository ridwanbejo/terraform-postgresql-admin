resource "postgresql_server" "fdw_servers" {
    for_each = { for key, item in var.fdw_servers : item.name => item }

    server_name    = each.value.server_name
    fdw_name       = each.value.fdw_name
    options        = each.value.options
    server_type    = each.value.server_type
    server_version = each.value.server_version
    server_owner   = each.value.server_owner
    drop_cascade   = each.value.drop_cascade
}

resource "postgresql_user_mapping" "fdw_user_mappings" {
    for_each = { for key, item in var.fdw_user_mappings : item.name => item }

    user_name   = each.value.username
    server_name = each.value.server_name
    options     = each.value.options
}
