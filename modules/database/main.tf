resource "postgresql_database" "databases" {
    for_each = { for key, item in var.databases : item.name => item }

    name              = each.value.name
    owner             = each.value.owner
    tablespace_name   = each.value.tablespace_name
    template          = each.value.template
    is_template       = each.value.is_template
    connection_limit  = each.value.connection_limit
    allow_connections = each.value.allow_connections
    encoding          = each.value.encoding
    lc_collate        = each.value.lc_collate
    lc_ctype          = each.value.lc_ctype
}

resource "postgresql_schema" "schemas" {
    # need to be filtered by locals
    for_each = { for key, item in local.database_schemas : item.name => item }
    
    name         = each.value.name
    owner        = each.value.owner
    database     = each.value.database
    drop_cascade = each.value.drop_cascade

    dynamic "policy" {
        for_each = each.value.policies
        content {
            role              = role.value["role"]
            create            = role.value["create"]
            create_with_grant = role.value["create_with_grant"]
            usage             = role.value["usage"]
            usage_with_grant  = role.value["usage_with_grant"]
        }
    }
}