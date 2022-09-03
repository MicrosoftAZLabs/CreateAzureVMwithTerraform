resource "azurerm_network_interface" "myTerraformNIC" {
  name                = var.nicname
  resource_group_name = azurerm_resource_group.myTerraformRG.name
  location            = azurerm_resource_group.myTerraformRG.location
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.myTerraformSubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.myTerraformIP.id
  }
  tags = var.tags
}

resource "azurerm_network_interface_security_group_association" "myTerraformNICAssociation" {
  network_interface_id      = azurerm_network_interface.myTerraformNIC.id
  network_security_group_id = azurerm_network_security_group.myTerraformNSG.id
}