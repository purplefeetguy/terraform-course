resource "azurerm_public_ip" "bastion" {
  name                = "bastionip"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
}