resource "random_id" "randomId" {
  keepers = {
    resource_group = azurerm_resource_group.myTerraformRG.name
  }
  byte_length = 8
}

resource "azurerm_storage_account" "myTerraformStorage" {
  name                     = "diag${random_id.randomId.hex}"
  resource_group_name      = azurerm_resource_group.myTerraformRG.name
  location                 = azurerm_resource_group.myTerraformRG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}