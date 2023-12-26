variable "fdw_servers" {
    type = list(object({
        server_name    = string
        fdw_name       = string
        options        = optional(map(any))
        server_type    = optional(string)
        server_version = optional(string)
        server_owner   = optional(string)
        drop_cascade   = optional(bool)
    }))
}

variable "fdw_user_mappings" {
    type = list(object({
        user_name   = string
        server_name = string
        options     = optional(map(any))
    }))
}