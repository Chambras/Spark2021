# Automating Data Analytics Environments

It creates the following resources:

- A DataBricks Cluster.
- A starter Notebook with initial python code to connect to Kafka.

## Project Structure

This project has the following files which make them easy to reuse, add or remove.

```ssh
.
├── LICENSE
├── README.md
├── clusters.tf
├── main.tf
├── notebooks.tf
├── outputs.tf
└── variables.tf
```

Most common parameters are exposed as variables in _`variables.tf`_

## Pre-requisites

It is assumed that you have azure CLI and Terraform installed and configured.
More information on this topic [here](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/terraform-install-configure). I recommend using a Service Principal with a certificate.

### versions

This terraform script has been tested using the following versions:

- Terraform =>1.0.2
- Azure provider 2.67.0
- Databricks provider 0.3.5
- Azure CLI 2.26.1

## VM Authentication

It uses key based authentication and it assumes you already have a key. You can configure the path using the _sshKeyPath_ variable in _`variables.tf`_ You can create one using this command:

```ssh
ssh-keygen -t rsa -b 4096 -m PEM -C vm@mydomain.com -f ~/.ssh/vm_ssh
```

## Usage

Just run these commands to initialize terraform, get a plan and approve it to apply it.

```ssh
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
```

I also recommend using a remote state instead of a local one. You can change this configuration in _`main.tf`_
You can create a free Terraform Cloud account [here](https://app.terraform.io).

This terraform script uses the [local-exec provisioner](https://www.terraform.io/docs/language/resources/provisioners/local-exec.html) in order to execute ansible playbook located in _'ansible/KafkaServer/apache_kafka.yml'_ which does all the required post-provisioning configuration. You can go to that folder for all the details.

## Clean resources

It will destroy everything that was created.

```ssh
terraform destroy --force
```

## Caution

Be aware that by running this script your account might get billed.

## Authors

- Marcelo Zambrana
