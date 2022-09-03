# Create a resource group
resource "azurerm_resource_group" "myTerraformRG" {
  name     = var.resourceGroupName
  location = var.location
  tags     = var.tags
}