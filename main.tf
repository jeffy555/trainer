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
resource "azurerm_storage_account" "spiritopsintermisa" {
  name                     = var.storage_account_name_1
  resource_group_name      = azurerm_resource_group.manual_spiritops_dev_test.name
  location                 = azurerm_resource_group.manual_spiritops_dev_test.location
  account_tier             = var.storage_account_1_account_tier
  account_kind             = var.storage_account_1_account_kind
  account_replication_type = var.storage_account_1_replication
  allow_nested_items_to_be_public = false
  https_traffic_only_enabled = true
  min_tls_version          = "TLS1_2"
  tags                     = local.common_tags
}

resource "azurerm_storage_account" "spiritopspersa" {
  name                     = var.storage_account_name_2
  resource_group_name      = azurerm_resource_group.manual_spiritops_dev_test.name
  location                 = azurerm_resource_group.manual_spiritops_dev_test.location
  account_tier             = var.storage_account_2_account_tier
  account_kind             = var.storage_account_2_account_kind
  account_replication_type = var.storage_account_2_replication
  allow_nested_items_to_be_public = false
  https_traffic_only_enabled = true
  min_tls_version          = "TLS1_2"
  tags                     = local.common_tags
}
resource "azurerm_service_plan" "spiritopsasp051010" {
  name                = var.azurerm_service_plan_spiritopsasp051010_name
  location            = var.spiritops_quota_region_21a8eb80dad7
  resource_group_name = azurerm_resource_group.manual_spiritops_dev_test.name
  os_type             = "Linux"
  sku_name            = var.azurerm_service_plan_spiritopsasp051010_sku
  worker_count        = 1
  tags                = local.common_tags
}

resource "azurerm_linux_web_app" "spiritopsappserv005" {
  name                = var.azurerm_linux_web_app_spiritopsappserv005_name
  location            = var.spiritops_quota_region_21a8eb80dad7
  resource_group_name = azurerm_resource_group.manual_spiritops_dev_test.name
  service_plan_id     = azurerm_service_plan.spiritopsasp051010.id

  site_config {
    application_stack {
      node_version = "22-lts"
    }
    minimum_tls_version = var.app_minimum_tls_version
  }

  tags = local.common_tags
}
