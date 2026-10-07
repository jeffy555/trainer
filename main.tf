resource "azurerm_resource_group" "manual_spiritops_dev_test" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = local.common_tags
}

resource "azurerm_cognitive_account" "manual_spiritops_openai" {
  name                = var.openai_resource_name
  location            = azurerm_resource_group.manual_spiritops_dev_test.location
  resource_group_name = azurerm_resource_group.manual_spiritops_dev_test.name
  kind                = "OpenAI"
  sku_name            = "S0"
  tags                = local.common_tags
}



# Import the administrator-created project resource group.
import {
  to = azurerm_resource_group.manual_spiritops_dev_test
  id = "/subscriptions/be1b0fcb-1e30-4142-bb0c-ff52f7a1a0e5/resourceGroups/manual-spiritops-dev-test"
}
