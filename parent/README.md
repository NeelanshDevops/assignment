# Parent Terraform

This folder calls the child modules for `vnet`, `nic`, `storage`, and `vm`.

Usage:

1. Set `admin_password` via CLI or a `terraform.tfvars` file.
2. Run `terraform init` then `terraform apply` in the `parent` folder.
