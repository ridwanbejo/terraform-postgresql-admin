# Basic PostgreSQL database and schema example

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
| <a name="module_tf_postgres_database"></a> [tf\_postgres\_database](#module\_tf\_postgres\_database) | ../../modules/database | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_postgres_databases"></a> [postgres\_databases](#input\_postgres\_databases) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_databases"></a> [postgres\_databases](#output\_postgres\_databases) | Current PostgreSQL databases |
| <a name="output_postgres_schemas"></a> [postgres\_schemas](#output\_postgres\_schemas) | Current PostgreSQL schemas |
<!-- END_TF_DOCS -->
