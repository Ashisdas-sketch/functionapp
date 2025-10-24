output "sp_id" {
  value = {for key,spid in azurerm_service_plan.sp: key => spid.id }
}