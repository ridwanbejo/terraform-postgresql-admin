resource "postgresql_publication" "publications" {
    for_each = { for key, item in var.publications : item.name => item }

    name           = each.value.name
    tables         = each.value.tables
    database       = each.value.database
    all_tables     = each.value.all_tables
    owner          = each.value.owner
    drop_cascade   = each.value.drop_cascade
    publish_param  = each.value.publish_param
    
    publish_via_partition_root_param = each.value.publish_via_partition_root_param
}

resource "postgresql_subscription" "subscriptions" {
    for_each = { for key, item in var.subscriptions : item.name => item }

    name         = each.value.name
    conninfo     = format("host=%s port=%d dbname=%s user=%s password=%s", each.value.conninfo.host, each.value.conninfo.port, each.value.conninfo.dbname, each.value.conninfo.user, each.value.conninfo.password)
    publications = each.value.publications
    database     = each.value.database
    create_slot  = each.value.create_slot
    slot_name    = each.value.slot_name
}