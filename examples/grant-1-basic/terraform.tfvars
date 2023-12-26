pg_grants = [
  {
    database    = "dev_ms_auth"
    role        = "dev_ms_auth_readonly"
    schema      = "public"
    object_type = "table"
    privileges  = ["SELECT"]
  },
  {
    database    = "dev_ms_auth"
    role        = "dev_ms_auth"
    schema      = "public"
    object_type = "table"
    privileges  = ["SELECT", "INSERT", "UPDATE", "DELETE"]
  }
]
