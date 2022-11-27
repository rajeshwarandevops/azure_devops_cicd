


terraform {
  backend "azurerm" {
    resource_group_name  = "kbb_azuredevops_template_cicd"
    storage_account_name = "kbbazdevopstfstatecicd"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

# Create Resource Group
resource "azurerm_resource_group" "tamops" {
  name     = var.resource_group_name
  location = var.location
}
