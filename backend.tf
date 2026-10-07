terraform {
  backend "azurerm" {
    resource_group_name = "AICloudBuilder"
    storage_account_name = "spiritopsbackend"
    container_name = "test"
    key = "projects/jeffy555-trainer/562b7fdb2e57a8cfae93/terraform.tfstate"
    use_azuread_auth = true
  }
}
