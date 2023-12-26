variable "publications" {
    type = list(object({
        name           = string
        database       = optional(string)
        tables         = optional(string)
        all_tables     = optional(bool)
        owner          = optional(string)
        drop_cascade   = optional(bool)
        publish_param  = optional(string)

        publish_via_partition_root_param = optional(bool)
    }))
}

variable "subscriptions" {
    type = list(object({
        name         = string
        conninfo     = object({
            host     = string
            port     = number
            dbname   = string
            user     = string
            password = string
        })
        publications = list(string)
        database     = optional(string)
        create_slot  = optional(bool)
        slot_name    = optional(string)
    }))
}