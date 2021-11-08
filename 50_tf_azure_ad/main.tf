terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "1.1.1"
    }
  }
}

provider "azuread" {
}

# resource "azuread_user" "user" {
#   user_principal_name = "houssem@houssemdellai.onmicrosoft.com"
#   display_name        = "Houssem Dellai"
#   mail_nickname       = "Houssem"
#   password            = "SecretP@sswd99!"
# }

resource "azuread_user" "user" {
  user_principal_name = "jcastillo@purplefeetguy.onmicrosoft.com"
  display_name        = "Jose Castillo"
  mail_nickname       = "jose"
  password            = "SecretP@sswd99!"
}
resource "azuread_group" "group" {
  name    = "TFTCourseGroup"
  members = [
    azuread_user.user.object_id,
    /* more users */
  ]
}