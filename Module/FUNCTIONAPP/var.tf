variable "fa_detail" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    location             = string
    storage_account_name = string
    storage_account_key  = string
    service_plan_id      = string
  }))
}
variable "stg_key" {}
variable "spid_key" {}