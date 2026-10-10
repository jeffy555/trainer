variable "owner" {
  type = string
}

variable "cost_center" {
  type = string
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
  type = string
}
