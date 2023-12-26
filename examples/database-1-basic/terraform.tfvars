postgres_databases = [
  {
    name              = "dev_ms_auth"
    owner             = "dev_ms_auth"
    allow_connections = true
    schemas           = [
      { 
        name  = "auth"
        owner = "dev_ms_auth"
        policies = []
      },
      { 
        name  = "user"
        owner = "dev_ms_auth"
        policies = []
      },
    ]
  },
  {
    name              = "dev_ms_payment"
    owner             = "dev_ms_payment"
    allow_connections = true
    schemas           = []
  }
]