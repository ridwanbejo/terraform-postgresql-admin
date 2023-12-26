module "tf_postgres_config" {
  source            = "../../modules/config"
  extensions        = var.postgres_extension
  replication_slots = var.postgres_replication_slots

  physical_replication_slots = var.postgres_physical_replication_slots
}
