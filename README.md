[![Terraform-Azure](https://github.com/Chambras/Spark2021/actions/workflows/terraform-azure.yml/badge.svg)](https://github.com/Chambras/Spark2021/actions/workflows/terraform-azure.yml)

# Automating Data Analytics Environments

Demo project presented at SAPRK3.0 2021.
It shows how to integrate Terraform, Ansible and multiple providers in order to easily create Data Analytics environments.

This specific demo uses FAA's System Wide Information System (SWIM) and connects to TFMS ( Traffic Flow Management System ) using a Kafka server.
More information about SWIM and TFMS can be found [here.](https://www.faa.gov/air_traffic/technology/swim/)

It also uses a Databricks cluster in order to analyze the data.

## Project Structure

This project has the following folders which make them easy to reuse, add or remove.

```ssh
.
├── LICENSE
├── README.md
├── ansible
├── notebooks
├── terraform-azure
└── terraform-databricks
```

## Caution

Be aware that by running this script your account might get billed.

## Authors

- Marcelo Zambrana
