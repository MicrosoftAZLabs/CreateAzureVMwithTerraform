resource "azurerm_virtual_network" "myTerraformNetwork" {
  name                = var.vnetname
  location            = azurerm_resource_group.myTerraformRG.location
  resource_group_name = azurerm_resource_group.myTerraformRG.name
  address_space       = ["10.0.0.0/16"]
  tags                = var.tags
}

resource "azurerm_subnet" "myTerraformSubnet" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.myTerraformRG.name
  virtual_network_name = azurerm_virtual_network.myTerraformNetwork.name
  address_prefixes     = ["10.0.1.0/24"]



}
