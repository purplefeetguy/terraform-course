resource "azurerm_windows_virtual_machine" "vm" {
  name                  = var.windows_vm_name
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.vm.id]
  size                  = "Standard_DS1_v2"
  admin_username        = "houssem"
  admin_password        = "@Aa123456789"

  os_disk {
    name                 = "myOsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "Windows-10"
    sku       = "20h1-pro-g2"
    version   = "latest"
  }
}
