variable "location" {
  type        = string
  default     = "eastus2"
  description = "Location where the resoruces are going to be created."
}

variable "suffix" {
  type        = string
  default     = "MZV"
  description = "To be added at the beginning of each resource."
}

variable "rgName" {
  type        = string
  default     = "SparkDemo2021"
  description = "Resource Group Name."
}

variable "tags" {
  type = map(any)
  default = {
    "Environment" = "Dev"
    "Project"     = "Spark2021"
    "BillingCode" = "Internal"
    "Customer"    = "CSU"
  }
  description = "Tags to be applied to all resources."
}

## Networking variables
variable "vnetName" {
  type        = string
  default     = "Main"
  description = "VNet name."
}

locals {
  base_cidr_block = "10.70.0.0/16"
}

variable "subnets" {
  type = map(any)
  default = {
    "workers"    = "1"
    "zookeeper"  = "2"
    "headnodes"  = "3"
    "management" = "4"
  }
  description = "Subnets to be created in the VNet"
}

variable "dataBricksSubnets" {
  type = map(any)
  default = {
    "publicDB"  = "5"
    "privateDB" = "6"
  }
  description = " DataBricks dedicated subnets for VNet injection."
}

## Security variables
variable "sgName" {
  type        = string
  default     = "RDPSSH_SG"
  description = "Default Security Group Name to be applied by default to VMs and subnets."
}

variable "sourceIPs" {
  type        = list(any)
  default     = ["173.66.39.236"]
  description = "Public IPs to allow inboud communications."
}

variable "workspaceName" {
  type        = string
  default     = "DBWokspaceSingleNode"
  description = "DataBricks Workspace name."
}

## Storage
variable "storageAccountName" {
  type        = string
  default     = "clstrdataingested"
  description = "BTS Cluster Storage Account."
}

## VM
variable "vmUserName" {
  type        = string
  default     = "kafkaAdmin"
  description = "Username to be added to the VM."
}

variable "sshKeyPath" {
  type        = string
  default     = "~/.ssh/vm_ssh.pub"
  description = "Public SSH Key to use when creating the VM."
  sensitive   = true
}

variable "sshPrvtKeyPath" {
  type        = string
  default     = "~/.ssh/vm_ssh"
  description = "Private SSH Key to use when creating the VM."
  sensitive   = false
}

variable "centossku" {
  type        = string
  default     = "7_7-gen2"
  description = "Default VM SKU to be used in the VM."
}
