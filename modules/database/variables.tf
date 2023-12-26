variable "databases" {
    type = list(object({
        name              = string
        owner             = optional(string)
        tablespace_name   = optional(string)
        connection_limit  = optional(number)
        allow_connections = optional(bool)
        is_template       = optional(bool)
        template          = optional(string)
        encoding          = optional(string)
        lc_collate        = optional(string)
        lc_ctype          = optional(string)
        
        schemas = optional(list(object({
            name         = string
            owner        = optional(string)
            database     = optional(string)
            drop_cascade = optional(bool)
            policies     = optional(list(object({
                role              = optional(string)
                create            = optional(bool)
                create_with_grant = optional(bool)
                usage             = optional(bool)
                usage_with_grant  = optional(bool)
            })))
        })))
    }))
}