resource "postgresql_grant" "grants" {
    for_each = { for key, item in var.grants : item.role => item }

    role              = each.value.role
    database          = each.value.database
    schema            = each.value.schema
    privileges        = each.value.privileges
    object_type       = each.value.object_type
    objects           = each.value.objects
    columns           = each.value.columns
    with_grant_option = each.value.with_grant_option
}

resource "postgresql_grant_role" "grant_roles" {
    for_each = { for key, item in var.grant_roles : format("%s/%s", item.role, item.grant_role) => item }

    role              = each.value.role
    grant_role        = each.value.grant_role
    with_admin_option = each.value.with_admin_option
}
