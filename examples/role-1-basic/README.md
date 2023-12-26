# Basic PostgreSQL role example

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
| <a name="module_tf_postgres_role"></a> [tf\_postgres\_role](#module\_tf\_postgres\_role) | ../../modules/role | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_postgres_roles"></a> [postgres\_roles](#input\_postgres\_roles) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgres_roles"></a> [postgres\_roles](#output\_postgres\_roles) | Current PostgreSQL roles |
<!-- END_TF_DOCS -->
