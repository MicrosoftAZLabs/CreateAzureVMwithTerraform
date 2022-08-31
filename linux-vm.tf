resource "azurerm_linux_virtual_machine" "myTerraformLinuxVM" {
  name                = var.virtualmachinename
  resource_group_name = azurerm_resource_group.myTerraformRG.name
  location            = azurerm_resource_group.myTerraformRG.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.myTerraformNIC.id ,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = tls_private_key.sshkey.public_key_openssh
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name = var.virtualmachinename
  disable_password_authentication = true
}


