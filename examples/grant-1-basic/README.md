# Basic PostgreSQL grant example

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
| <a name="module_tf_postgres_grant"></a> [tf\_postgres\_grant](#module\_tf\_postgres\_grant) | ../../modules/grant | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pg_grant_roles"></a> [pg\_grant\_roles](#input\_pg\_grant\_roles) | n/a | `list(any)` | `[]` | no |
| <a name="input_pg_grants"></a> [pg\_grants](#input\_pg\_grants) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pg_grant_roles"></a> [pg\_grant\_roles](#output\_pg\_grant\_roles) | Current PostgreSQL grant roles |
| <a name="output_pg_grants"></a> [pg\_grants](#output\_pg\_grants) | Current PostgreSQL grants |
<!-- END_TF_DOCS -->
