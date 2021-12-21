
terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform-Demo"
    storage_account_name = "tfstatestoragedemo123"
    container_name       = "tfdemocontainer"
    key                  = "demotf.terraform.tfstate"
  }
}
