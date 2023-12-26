module "tf_postgres_pubsub" {
  source      = "../../modules/pubsub"
  publications  = var.pg_publications
  subscriptions = var.pg_subscriptions
}
