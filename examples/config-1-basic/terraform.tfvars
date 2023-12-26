postgres_extension = [
  {
    name     = "postgres_fdw"
    database = "dev_ms_auth"
  },
  {
    name     = "postgres_fdw"
    database = "dev_ms_payment"
  },
]

postgres_physical_replication_slots = [
  {
    name = "my_physical_slot_1"
  },
  { 
    name = "my_physical_slot_2"
  },
  { 
    name = "my_physical_slot_3"
  }
]