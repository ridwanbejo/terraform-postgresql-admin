terraform {
  required_version = ">= 1.4"

  required_providers {
    postgresql = {
      source = "cyrilgdn/postgresql"
      version = "1.21.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "postgresql" {
  host     = "127.0.0.1"
  port     = "5432"
  database = "postgres"
  username = "postgres"
  password = "example"
  sslmode  = "disable"
}
