# Terraform-PostgreSQL-Admin for managing grant

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
| [postgresql_grant.grants](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/grant) | resource |
| [postgresql_grant_role.grant_roles](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/grant_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_grant_roles"></a> [grant\_roles](#input\_grant\_roles) | n/a | <pre>list(object({<br>        role              = string<br>        grant_role        = string<br>        with_admin_option = optional(bool)<br>    }))</pre> | n/a | yes |
| <a name="input_grants"></a> [grants](#input\_grants) | n/a | <pre>list(object({<br>        role              = string<br>        database          = string<br>        schema            = string<br>        object_type       = string<br>        privileges        = list(string)<br>        objects           = optional(list(string))<br>        columns           = optional(list(string))<br>        with_grant_option = optional(bool)<br>    }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_grant_roles"></a> [postgres\_grant\_roles](#output\_postgres\_grant\_roles) | List of PostgreSQL grant roles |
| <a name="output_postgres_grants"></a> [postgres\_grants](#output\_postgres\_grants) | List of PostgreSQL grants |
<!-- END_TF_DOCS -->
