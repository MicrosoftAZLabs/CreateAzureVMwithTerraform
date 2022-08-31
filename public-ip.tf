resource "azurerm_public_ip" "myTerraformIP" {
  name                = var.ipaddressname
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}