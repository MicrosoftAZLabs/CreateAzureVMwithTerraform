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

## Creating VM on Azure

* In order to deploy these resources in Azure, clone the repo in Cloud shell(Azure)

![image](https://user-images.githubusercontent.com/49052348/187831047-a0b6ba1b-8b79-416c-9ca1-7590bd017586.png)

* Move to the folder where the repo has been cloned. After that run `terraform init` command

![image](https://user-images.githubusercontent.com/49052348/187831829-5ce29826-8d28-495c-ab31-37bd7c772ed3.png)

* After that Validate (`terraform validate`) --> Plan(`terraform plan`) --> Apply(`terraform apply`)

![image](https://user-images.githubusercontent.com/49052348/187832274-9656b296-c4c9-4779-a8e6-a08d33470e07.png)

  * Once the resources are deployed, you can see the below mentioned message in your cloud shell

  ![image](https://user-images.githubusercontent.com/49052348/187832761-1b2b68a5-6abb-40db-bbf5-a3a6bc8ccf44.png)

![image](https://user-images.githubusercontent.com/49052348/187833025-d5f8ec72-0769-40a6-ace9-5b9b8d5f9523.png)

## Login into the Linux VM

* As you would noticed we have create the private-public key using [tls](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key)

We can save the private key in a file which will be used for login into the VM

![image](https://user-images.githubusercontent.com/49052348/187833649-3d00c34c-bdcb-4b05-82f2-e6d33d42a7da.png)

Change the required permission and login using the below command as mentioned in the screenshot

![image](https://user-images.githubusercontent.com/49052348/187834065-6984f39a-7831-4a13-9b8a-49db3a6116a7.png)


## Clean-up resource

* To clean up the resources created, just run `terraform destroy` command

![image](https://user-images.githubusercontent.com/49052348/187834284-1cfe773c-136d-425c-92eb-7629d79eb642.png)

![image](https://user-images.githubusercontent.com/49052348/187834699-1d5090db-aad1-49ff-a321-3f9e49e8298c.png)


