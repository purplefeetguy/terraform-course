# data "azurerm_subscription" "current" {}

resource "azurerm_policy_definition" "onlywestus2" {
  name        = "only-deploy-in-westus2"
  policy_type = "Custom"
  mode        = "All"
  display_name = "Deploy Only in West US 2"

  policy_rule = <<POLICY_RULE
    {
    "if": {
      "not": {
        "field": "location",
        "equals": "westus2"
      }
    },
    "then": {
      "effect": "Deny"
    }
  }
POLICY_RULE
}