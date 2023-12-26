variable "grants" {
    type = list(object({
        role              = string
        database          = string
        schema            = string
        object_type       = string
        privileges        = list(string)
        objects           = optional(list(string))
        columns           = optional(list(string))
        with_grant_option = optional(bool)
    }))
}

variable "grant_roles" {
    type = list(object({
        role              = string
        grant_role        = string
        with_admin_option = optional(bool)
    }))
}