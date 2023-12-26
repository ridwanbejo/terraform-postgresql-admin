variable "postgres_extension" {
  type    = list(any)
  default = []
}

variable "postgres_replication_slots" {
  type    = list(any)
  default = []
}

variable "postgres_physical_replication_slots" {
  type    = list(any)
  default = []
}
