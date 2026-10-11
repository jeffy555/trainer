resource_group_name                                = "manual-spiritops-dev-test"
resource_group_location                            = "East US"
openai_resource_name                               = "manual-spiritops-openai"
foundry_tool_name                                  = "spiritops-foundry-api"
owner                                              = "Jefferson"
cost_center                                        = "Dev"
storage_account_name_1                             = "spiritopsintermisa"
storage_account_name_2                             = "spitiopspersa"
storage_account_1_replication                      = "GRS"
storage_account_2_replication                      = "GRS"
storage_account_1_account_tier                     = "Standard"
storage_account_2_account_tier                     = "Standard"
storage_account_1_account_kind                     = "StorageV2"
storage_account_2_account_kind                     = "StorageV2"
azurerm_service_plan_spiritopsasp051010_name       = "spiritopsasp051010"
azurerm_service_plan_spiritopsasp051010_sku        = "B1"
azurerm_linux_web_app_spiritopsappserv005_name     = "spiritopsappserv005"
azurerm_linux_web_app_spiritopsappserv005_location = "West US 2"
app_minimum_tls_version                            = "1.2"

spiritops_quota_region_21a8eb80dad7 = "westus2"
function_app_name                   = "spiritopsfuncapp005"
function_app_location               = "West US 2"
function_app_storage_account        = "spiritopsintermisa"
function_app_runtime                = "Node.js 14 LTS"
function_app_settings = {
  "setting1" = {
    name  = "APP_SETTING_1"
    value = "value1"
  }
  "setting2" = {
    name  = "APP_SETTING_2"
    value = "value2"
  }
}
storage_account_name     = "spiritopsfinal7890"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
