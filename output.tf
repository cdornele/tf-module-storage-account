output "stg_account_name" {
    value = azurerm_storage_account.stg_account.name
}

output "stg_account_id" {
    value = azurerm_storage_account.stg_account.id
}

output "stg_account_primary_key" {
    value = azurerm_storage_account.stg_account.primary_access_key
    sensitive = true
}

output "stg_account_secondary_key" {
    value = azurerm_storage_account.stg_account.secondary_access_key
    sensitive = true
}

output "stg_account_primary_connection_string" {
    value = azurerm_storage_account.stg_account.primary_connection_string
    sensitive = true
}
