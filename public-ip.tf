resource "azurerm_public_ip" "myTerraformIP" {
  name                = var.ipaddressname
  resource_group_name = azurerm_resource_group.myTerraformRG.name
  location            = azurerm_resource_group.myTerraformRG.location
  allocation_method   = "Dynamic"

  tags = var.tags
}