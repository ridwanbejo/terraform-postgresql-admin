# Terraform-PostgreSQL-Admin for managing database

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

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [postgresql_database.databases](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/database) | resource |
| [postgresql_schema.schemas](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/schema) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databases"></a> [databases](#input\_databases) | n/a | <pre>list(object({<br>        name              = string<br>        owner             = optional(string)<br>        tablespace_name   = optional(string)<br>        connection_limit  = optional(number)<br>        allow_connections = optional(bool)<br>        is_template       = optional(bool)<br>        template          = optional(string)<br>        encoding          = optional(string)<br>        lc_collate        = optional(string)<br>        lc_ctype          = optional(string)<br>        <br>        schemas = optional(list(object({<br>            name         = string<br>            owner        = optional(string)<br>            database     = optional(string)<br>            drop_cascade = optional(bool)<br>            policies     = optional(list(object({<br>                role              = optional(string)<br>                create            = optional(bool)<br>                create_with_grant = optional(bool)<br>                usage             = optional(bool)<br>                usage_with_grant  = optional(bool)<br>            })))<br>        })))<br>    }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_databases"></a> [postgres\_databases](#output\_postgres\_databases) | List of PostgreSQL databases |
| <a name="output_postgres_schemas"></a> [postgres\_schemas](#output\_postgres\_schemas) | List of PostgreSQL schemas |
<!-- END_TF_DOCS -->
