# Terraform-PostgreSQL-Admin for managing config

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
| [postgresql_extension.extensions](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/extension) | resource |
| [postgresql_physical_replication_slot.physical_slots](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/physical_replication_slot) | resource |
| [postgresql_replication_slot.slots](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/replication_slot) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_extensions"></a> [extensions](#input\_extensions) | n/a | <pre>list(object({<br>    name           = string<br>    schema         = optional(string)<br>    version        = optional(string)<br>    database       = optional(string)<br>    drop_cascade   = optional(bool)<br>    create_cascade = optional(bool)<br>  }))</pre> | n/a | yes |
| <a name="input_physical_replication_slots"></a> [physical\_replication\_slots](#input\_physical\_replication\_slots) | n/a | <pre>list(object({<br>    name = string<br>  }))</pre> | n/a | yes |
| <a name="input_replication_slots"></a> [replication\_slots](#input\_replication\_slots) | n/a | <pre>list(object({<br>    name     = string<br>    plugin   = string<br>    database = optional(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_extensions"></a> [postgres\_extensions](#output\_postgres\_extensions) | List of PostgreSQL extensions |
| <a name="output_postgres_physical_replication_slots"></a> [postgres\_physical\_replication\_slots](#output\_postgres\_physical\_replication\_slots) | List of PostgreSQL physical replication slots |
| <a name="output_postgres_replication_slots"></a> [postgres\_replication\_slots](#output\_postgres\_replication\_slots) | List of PostgreSQL replication slots |
<!-- END_TF_DOCS -->
