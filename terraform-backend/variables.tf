variable "region" {
  type    = string
  default = "westus"
}

variable "resource_group" {
  type    = string
  default = "terraform-course-rg"
}

variable "storage_account_name" {
  type = string
  default = "terraformcourse"
}

variable "storage_container_name" {
  type = string
  default = "terraformcoursestorcontpfg"
  
}