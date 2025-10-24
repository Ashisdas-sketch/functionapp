resource "azurerm_linux_function_app" "fa" {
    for_each = var.fa_detail
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  storage_account_name       = each.value.storage_account_name
  storage_account_access_key = var.stg_key[each.value.storage_account_key]
  service_plan_id            = var.spid_key[each.value.service_plan_id]

  site_config {}
}
