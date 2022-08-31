variable "location" {
    type= string
    default = "East US"
}
variable "resourceGroupName" {
    type = string
    default = "myTerraformRG"
}
variable "tags" {
    type= map(any)
    default = {
      "Env" = "Test"
    }
}
variable "vnetname" {
    type = string
  
}

variable "subnetname" {
    type = string
}

variable "ipaddressname" {
    type = string
  
}
variable "nsgname" {
    type = string
  
}

variable "nicname" {
    type = string
  
}
variable "virtualmachinename" {
    type = string
  
}