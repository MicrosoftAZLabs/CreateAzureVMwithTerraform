# Create a linux VM using Terraform in Azure


## IaC (Infrastructure as code)
IaC is a code (human readable) that deploys your infrastructure
resources onto various platforms instead of managing them manually
through a user interface.
Provisioning infrastructure through software to achieve consistent and
predictable environment.

## How Terraform works?
* Terraform allows infrastructure to be expressed as code in a simple,
human readable language called HCL (HashiCorp Configuration
Language). It reads configuration files and provides an execution plan
of changes, which can be reviewed for safety and then applied and
provisioned.
* Extensible providers allow Terraform to manage a broad range of
resources, including IaaS, PaaS, SaaS, and hardware services.

## Terraform Execution Flow

![image](https://user-images.githubusercontent.com/49052348/187825099-0f722726-dc42-434b-8581-df7904427c4c.png)


## Azure provider (azurerm)
* The Azure Provider (azurerm) can be used to configure infrastructure in Microsoft Azure using the Azure Resource Manager API's.
Official Terraform document --> <https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs>

## What are we  building here?

We will try to deploy a standalone Linux VM, below is the pictorial representation of what we will deploy

![image](https://user-images.githubusercontent.com/49052348/187825546-7290da21-d04a-4c15-8bc4-881c8c0b74f3.png)
