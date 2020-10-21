# GCP Terraform Lab

A boilerplate of configuration files for automating on GCP using Terraform.
---
## Technologies

- [Terraform](https://www.terraform.io/)
- [Terratest](https://terratest.gruntwork.io/)
- [Google Cloud Platform](https://cloud.google.com)
- [go-1.13](https://golang.org/)
---
## Details

A list of the required variables can be found in `variables.tf`. These can either be defined by in a `terraform.tfvars` file or at toe command line (the latter is not supported by the terratest framework). The google provider requires a `credentials.json` file for a service account to use during provisioning. Details on how to set this up can be found [here](https://cloud.google.com/community/tutorials/getting-started-on-gcp-with-terraform). This project depends upon having a project already created on GCP. The service account should have the necessary permissions within that project.
---
## Use

- [Test](https://terratest.gruntwork.io/docs/getting-started/quick-start/) 
After creating the necessary variable definitions in `terraform.tfvars`, run the following commands from the project root directory:
```sh
cd test
go mod init <MODULE_NAME> # Only required once.
go test -v --timeout=30m
```

- Deploy
In the project root directory, run the following commands:
```sh
terraform validate && terraform plan
terraform apply
```
terraform` will ask for definitions for any variables that were not defined in `terraform.tfvars`.



