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