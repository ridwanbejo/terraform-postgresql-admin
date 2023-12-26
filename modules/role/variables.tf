variable "roles" {
  type = list(object({
    name             = string
    login            = optional(bool)
    replication      = optional(bool)
    superuser        = optional(bool)
    create_database  = optional(bool)
    create_role      = optional(bool)
    inherit          = optional(bool)
    connection_limit = optional(number)
    search_path      = optional(list(string))
    valid_until      = optional(string)
    assume_role      = optional(string)
    roles            = optional(list(string))

    skip_drop_role      = optional(bool)
    skip_reassign_owned = optional(bool)
    statement_timeout   = optional(number)
    encrypted_password  = optional(bool)
    
    bypass_row_level_security = optional(bool)
  }))
}

variable "default_privileges" {
  type = list(object({
    role        = string
    database    = string
    owner       = string
    object_type = string
    privileges  = string
    schema      = optional(string)
  }))
}