resource "azurerm_storage_account" "myTerraformStorage" {
  name                     = var.storagename
  resource_group_name = azurerm_resource_group.myTerraformRG.name
  location            = azurerm_resource_group.myTerraformRG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}