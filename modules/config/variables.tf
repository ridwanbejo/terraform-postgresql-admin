variable "extensions" {
  type = list(object({
    name           = string
    schema         = optional(string)
    version        = optional(string)
    database       = optional(string)
    drop_cascade   = optional(bool)
    create_cascade = optional(bool)
  }))
}

variable "replication_slots" {
  type = list(object({
    name     = string
    plugin   = string
    database = optional(string)
  }))
}

variable "physical_replication_slots" {
  type = list(object({
    name = string
  }))
}