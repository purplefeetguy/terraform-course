terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-course-akstfs-rg"
    storage_account_name = "terraformcourse"
    container_name       = "terraformcoursestorcontpfg"
    key                  = "terraform-webApp.tfstate"
  }
}
