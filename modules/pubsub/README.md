# Terraform-PostgreSQL-Admin for managing PubSub

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
| [postgresql_publication.publications](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/publication) | resource |
| [postgresql_subscription.subscriptions](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.21.0/docs/resources/subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_publications"></a> [publications](#input\_publications) | n/a | <pre>list(object({<br>        name           = string<br>        database       = optional(string)<br>        tables         = optional(string)<br>        all_tables     = optional(bool)<br>        owner          = optional(string)<br>        drop_cascade   = optional(bool)<br>        publish_param  = optional(string)<br><br>        publish_via_partition_root_param = optional(bool)<br>    }))</pre> | n/a | yes |
| <a name="input_subscriptions"></a> [subscriptions](#input\_subscriptions) | n/a | <pre>list(object({<br>        name         = string<br>        conninfo     = object({<br>            host     = string<br>            port     = number<br>            dbname   = string<br>            user     = string<br>            password = string<br>        })<br>        publications = list(string)<br>        database     = optional(string)<br>        create_slot  = optional(bool)<br>        slot_name    = optional(string)<br>    }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_publications"></a> [postgres\_publications](#output\_postgres\_publications) | List of PostgreSQL publications |
| <a name="output_postgres_subscriptions"></a> [postgres\_subscriptions](#output\_postgres\_subscriptions) | List of PostgreSQL subscriptions |
<!-- END_TF_DOCS -->
