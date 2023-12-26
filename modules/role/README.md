# Terraform-PostgreSQL-Admin for managing role

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | 1.21.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | 1.21.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [postgresql_default_privileges.default_privileges](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/default_privileges) | resource |
| [postgresql_role.roles](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/role) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_privileges"></a> [default\_privileges](#input\_default\_privileges) | n/a | <pre>list(object({<br>    role        = string<br>    database    = string<br>    owner       = string<br>    object_type = string<br>    privileges  = string<br>    schema      = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | n/a | <pre>list(object({<br>    name             = string<br>    login            = optional(bool)<br>    replication      = optional(bool)<br>    superuser        = optional(bool)<br>    create_database  = optional(bool)<br>    create_role      = optional(bool)<br>    inherit          = optional(bool)<br>    connection_limit = optional(number)<br>    search_path      = optional(list(string))<br>    valid_until      = optional(string)<br>    assume_role      = optional(string)<br>    roles            = optional(list(string))<br><br>    skip_drop_role      = optional(bool)<br>    skip_reassign_owned = optional(bool)<br>    statement_timeout   = optional(number)<br>    encrypted_password  = optional(bool)<br>    <br>    bypass_row_level_security = optional(bool)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_default_privileges"></a> [postgres\_default\_privileges](#output\_postgres\_default\_privileges) | List of PostgreSQL default privilages |
| <a name="output_postgres_roles"></a> [postgres\_roles](#output\_postgres\_roles) | List of PostgreSQL roles |
<!-- END_TF_DOCS -->
