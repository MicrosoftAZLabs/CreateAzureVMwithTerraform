resource "azurerm_network_security_group" "myTerraformNSG" {
  name                = var.nsgname
  resource_group_name = azurerm_resource_group.myTerraformRG.name
  location            = azurerm_resource_group.myTerraformRG.location

  security_rule {
    name                       = "SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = var.tags
}