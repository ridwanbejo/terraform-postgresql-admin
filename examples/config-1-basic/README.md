# Basic PostgreSQL config example

## Usage

To run this example you need to execute:

```
$ terraform init
$ terraform plan
$ terraform apply
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | 1.21.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf_postgres_config"></a> [tf\_postgres\_config](#module\_tf\_postgres\_config) | ../../modules/config | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_postgres_extension"></a> [postgres\_extension](#input\_postgres\_extension) | n/a | `list(any)` | `[]` | no |
| <a name="input_postgres_physical_replication_slots"></a> [postgres\_physical\_replication\_slots](#input\_postgres\_physical\_replication\_slots) | n/a | `list(any)` | `[]` | no |
| <a name="input_postgres_replication_slots"></a> [postgres\_replication\_slots](#input\_postgres\_replication\_slots) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_extension"></a> [postgres\_extension](#output\_postgres\_extension) | Current PostgreSQL Extensions |
<!-- END_TF_DOCS -->
