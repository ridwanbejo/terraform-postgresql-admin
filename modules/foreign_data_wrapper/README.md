# Terraform-PostgreSQL-Admin for managing FDW

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
| [postgresql_server.fdw_servers](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/server) | resource |
| [postgresql_user_mapping.fdw_user_mappings](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/user_mapping) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fdw_servers"></a> [fdw\_servers](#input\_fdw\_servers) | n/a | <pre>list(object({<br>        server_name    = string<br>        fdw_name       = string<br>        options        = optional(map(any))<br>        server_type    = optional(string)<br>        server_version = optional(string)<br>        server_owner   = optional(string)<br>        drop_cascade   = optional(bool)<br>    }))</pre> | n/a | yes |
| <a name="input_fdw_user_mappings"></a> [fdw\_user\_mappings](#input\_fdw\_user\_mappings) | n/a | <pre>list(object({<br>        user_name   = string<br>        server_name = string<br>        options     = optional(map(any))<br>    }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_fdw_servers"></a> [postgres\_fdw\_servers](#output\_postgres\_fdw\_servers) | List of PostgreSQL FDW servers |
| <a name="output_postgres_fdw_user_mappings"></a> [postgres\_fdw\_user\_mappings](#output\_postgres\_fdw\_user\_mappings) | List of PostgreSQL FDW user mappings |
<!-- END_TF_DOCS -->
