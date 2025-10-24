output "storage_account_key" {
value = {for key, storage in azurerm_storage_account.stg: key => storage.id}
  
}