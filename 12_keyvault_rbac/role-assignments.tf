resource "azurerm_role_assignment" "role-secret-officer" {
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = data.azurerm_client_config.current.object_id
  scope                = azurerm_key_vault.keyvault.id
}

resource "azurerm_role_assignment" "role-secret-user" {
  role_definition_name = "Key Vault Secrets User"
  principal_id         = data.azurerm_client_config.current.object_id
  scope                = "${azurerm_key_vault.keyvault.id}/secrets/${azurerm_key_vault_secret.database-password.name}"
  // scope                = "/subscriptions/xxxxxxxxx/resourceGroups/kv_rbac_terraform_rg/providers
  //                         /Microsoft.KeyVault/vaults/demokv01093/secrets/MySecret"
  // scope                = azurerm_key_vault_secret.database-password.id
}

