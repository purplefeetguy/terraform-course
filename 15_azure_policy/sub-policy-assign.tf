data "azurerm_subscription" "current" {}

resource "azurerm_subscription_policy_assignment" "onlywestus2assign" {
  name                 = "only-in-westus2"
  policy_definition_id = azurerm_policy_definition.onlywestus2.id
  subscription_id      = data.azurerm_subscription.current.id
}