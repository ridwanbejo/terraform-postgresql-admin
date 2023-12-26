resource "postgresql_extension" "extensions" {
  for_each = { for key, item in var.extensions : format("%s/%s", item.database, item.name) => item }

  name           = each.value.name
  schema         = each.value.schema
  version        = each.value.version
  database       = each.value.database
  drop_cascade   = each.value.drop_cascade
  create_cascade = each.value.create_cascade
}

resource "postgresql_replication_slot" "slots" {
  for_each = { for key, item in var.replication_slots: format("%s/%s", item.database, item.name) => item }

  name     = each.value.name
  plugin   = each.value.plugin
  database = each.value.database
}

resource "postgresql_physical_replication_slot" "physical_slots" {
  for_each = { for key, item in var.physical_replication_slots: item.name => item }

  name     = each.value.name
}