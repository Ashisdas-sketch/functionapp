variable "rg_details" {
  description = "A map of resource group details for DEV environment"
  type = map(object({
    name     = string
    location = string
  }))
}

variable "stg_details" {
  description = "value of storage account details"
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}
variable "sp_details" {
  description = "value of service plan"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    os_type             = string
    sku_name            = string
  }))
}

variable "fa_details" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    location             = string
    storage_account_name = string
    storage_account_key  = string
    service_plan_id      = string
  }))

}
