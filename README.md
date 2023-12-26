# Terraform MongoDB User

This is a Terraform module for managing user access at MongoDB. You can use this module both for commercial or non-commercial purposes.

Currently, you can manage these resources in MongoDB by using this module:

- users
- roles

Tested in:

- MongoDB

## A. Prerequisites

Requirements:

- Terraform with version >= 1.4
- Kaginari/mongodb
- Hashicorp/random

Before we continue to use the module, please pay attention to these terms for `database `in this module:

- `role_db`, selected database for storing role configuration. Default value from tf-provider is `admin`
- `target_db`, selected database which the privilege will be assigned to.
- `auth_database`, database that will be used by the user for authentication

## B. How to use this module for your Terraform project ?

- Copy `example/basic-1` project from this module. You can extend it as per your requirements
- Configure MongoDB host and port by modifying the `providers.tf`. For example `localhost` and `27017`
  - If you want to use another authentication method, [please read more at the provider documentation](https://registry.terraform.io/providers/Kaginari/mongodb/latest/docs)
- Configure `TF_VAR_mongodb_username` and `TF_VAR_mongodb_password` as environment variables. For example:

```
$ export TF_VAR_mongodb_username=root
$ export TF_VAR_mongodb_password=example
```

- Check `terraform.tfvars` inside the Project. Please try to see how the variables configured.
- Adjust the tfvars based on your requirements. The tfvars is just example. Then, Save it
- Run these commands:

```
$ terraform init
$ terraform plan
```
This is the output when you run terraform plan successfully:

```
...

  # module.tf_mongodb_user.random_password.password["septian"] will be created
  + resource "random_password" "password" {
      + bcrypt_hash      = (sensitive value)
      + id               = (known after apply)
      + length           = 16
      + lower            = true
      + min_lower        = 0
      + min_numeric      = 0
      + min_special      = 0
      + min_upper        = 0
      + number           = true
      + numeric          = true
      + override_special = "!#$%&*()-_=+[]{}<>:?"
      + result           = (sensitive value)
      + special          = true
      + upper            = true
    }

Plan: 10 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + mongodb_roles = {
      + developer = "admin"
      + guest     = "admin"
    }
  + mongodb_users = {
      + bejo    = "reporting"
      + fadjar  = "reporting"
      + ridwan  = "reporting"
      + septian = "reporting"
    }

```

After you feel confidence with the terraform plan output, let's apply it.

```
$ terraform apply -auto-approve
```

- If it succeed, you must see this kind of output on your terminal

```
...

module.tf_mongodb_user.mongodb_db_role.roles["developer"]: Creation complete after 0s [id=YWRtaW4uZGV2ZWxvcGVy]
module.tf_mongodb_user.mongodb_db_role.roles["guest"]: Creation complete after 0s [id=YWRtaW4uZ3Vlc3Q=]
module.tf_mongodb_user.random_password.password["septian"]: Creation complete after 0s [id=none]
module.tf_mongodb_user.random_password.password["bejo"]: Creation complete after 0s [id=none]
module.tf_mongodb_user.random_password.password["fadjar"]: Creation complete after 0s [id=none]
module.tf_mongodb_user.random_password.password["ridwan"]: Creation complete after 0s [id=none]
module.tf_mongodb_user.mongodb_db_user.users["bejo"]: Creating...
module.tf_mongodb_user.mongodb_db_user.users["fadjar"]: Creating...
module.tf_mongodb_user.mongodb_db_user.users["septian"]: Creating...
module.tf_mongodb_user.mongodb_db_user.users["ridwan"]: Creating...
module.tf_mongodb_user.mongodb_db_user.users["bejo"]: Creation complete after 0s [id=cmVwb3J0aW5nLmJlam8=]
module.tf_mongodb_user.mongodb_db_user.users["ridwan"]: Creation complete after 0s [id=cmVwb3J0aW5nLnJpZHdhbg==]
module.tf_mongodb_user.mongodb_db_user.users["septian"]: Creation complete after 0s [id=cmVwb3J0aW5nLnNlcHRpYW4=]
module.tf_mongodb_user.mongodb_db_user.users["fadjar"]: Creation complete after 0s [id=cmVwb3J0aW5nLmZhZGphcg==]

Apply complete! Resources: 10 added, 0 changed, 0 destroyed.

Outputs:

mongodb_roles = {
  "developer" = "admin"
  "guest" = "admin"
}
mongodb_users = {
  "bejo" = "reporting"
  "fadjar" = "reporting"
  "ridwan" = "reporting"
  "septian" = "reporting"
}
```

You will see at your MongoDB that users and roles are created once the terraform applied.

## C. Understanding tfvars scenarios

There are some scenarios that you could choose when using this module. For example:

1. user could be assined without any roles

```
mongodb_users = [
  {
    name          = "bejo"
    auth_database = "reporting"
    roles         = []
  },
]

```

2. user could be assigned with default roles (e.g. readAnyDatabase)

```
mongodb_users = [
  {
    name          = "septian"
    auth_database = "reporting"
    roles = [
      {
        name    = "readAnyDatabase",
        role_db = "admin"
      }
    ]
  },
]

```

3. user could be assigned with custom roles (e.g. developer)

```
mongodb_users = [
  {
    name          = "ridwan"
    auth_database = "reporting"
    roles = [
      {
        name    = "developer",
        role_db = "admin"
      }
    ]
  },
]
```

## D. Ensuring quality

I am trying to follow these approaches for ensuring quality of the tf-module:

- **validate**, ensure my Terraform module is in correct configuration based on Terraform guideline
- **auto-format**, ensure my Terraform script is edited with correct format based on Terraform guideline
- **linter**, ensure my Terraform script is in correct format based on Terraform guideline
- **security**, ensure my Terraform module is free from CVE and stay compliance
- **automation**, run all above steps by using automation tool to improve development time and keep best quality before or after merging to Git repository


The tools:

- [terraform validate](https://developer.hashicorp.com/terraform/cli/commands)
- [terraform fmt](https://developer.hashicorp.com/terraform/cli/commands)
- [tflint](https://github.com/terraform-lint48ers/tflint)
- [tfsec](https://github.com/aquasecurity/tfsec)
- [Pre-commit](https://pre-commit.com/)
- Github Action [Setup Terraform pipeline](https://github.com/hashicorp/setup-terraform)

## E. How to contribute ?

If you find any issue, you can raise it here at our [Issue Tracker](https://github.com/ridwanbejo/terraform-mongodb-user/issues)

If you have something that you want to merge to this repo, just raise [Pull Requests](https://github.com/ridwanbejo/terraform-mongodb-user/pulls)

Ensure that you install all the tools from section D. for development purpose.
