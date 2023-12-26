postgres_roles = [
  {
    name  = "dev_ms_auth"
    login = true
  },
  {
    name  = "dev_ms_auth_readonly"
  },
  {
    name  = "dev_ms_payment"
    login = true
  },
  {
    name            = "tf_postgres_automation"
    login           = true
    create_database = true
    create_role     = true
  },
  {
    name             = "patroni_replication"
    login            = true
    replication      = true
    connection_limit = 5
  }
]