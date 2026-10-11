variable "owner" {
  description = "Configuration input: owner."
  type        = string
}

variable "cost_center" {
  description = "Configuration input: cost center."
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable "openai_resource_name" {
  type = string
}

variable "foundry_tool_name" {
  type = string
}
variable "storage_account_name_1" {
  type = string
}

variable "storage_account_name_2" {
  type = string
}

variable "storage_account_1_replication" {
  type = string
}

variable "storage_account_2_replication" {
  type = string
}

variable "storage_account_1_account_tier" {
  type = string
}

variable "storage_account_2_account_tier" {
  type = string
}

variable "storage_account_1_account_kind" {
  type = string
}

variable "storage_account_2_account_kind" {
  type = string
}
variable "azurerm_service_plan_spiritopsasp051010_name" {
  type = string
}

variable "azurerm_service_plan_spiritopsasp051010_sku" {
  type = string
}

variable "azurerm_linux_web_app_spiritopsappserv005_name" {
  type = string
}


variable "azurerm_linux_web_app_spiritopsappserv005_location" {
  type = string
}

variable "app_minimum_tls_version" {
  type = string
}

variable "spiritops_quota_region_21a8eb80dad7" {
  description = "Approved App Service region after quota recovery"
  type        = string
}
variable "function_app_name" {
  description = "The name of the Azure Function App."
  type        = string
}

variable "function_app_location" {
  description = "The location of the Azure Function App, matching the App Service Plan."
  type        = string
}

variable "function_app_storage_account" {
  description = "The storage account to be used by the Function App."
  type        = string
}

variable "function_app_runtime" {
  description = "The runtime stack for the Function App, e.g., Node.js 14 LTS."
  type        = string
}
variable "function_app_settings" {
  description = "A map of app settings for the Azure Function App."
  type = map(object({
    name  = string
    value = string
  }))
}
