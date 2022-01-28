locals {
  storage_account_name = "${var.prefix}-${trimsuffix(var.service, "tion")}"
  randomized_name = format("%s%sstg", lower(replace(local.storage_account_name, "/[[:^alnum:]]/", "")), random_integer.ri.result)
}

resource "random_integer" "ri" {
    min=100
    max=999
}

resource "azurerm_storage_account" "stg_account" {
  name                     = local.randomized_name
  resource_group_name      = var.resource_group
  location                 = var.build_location
  account_tier             = var.stg_account_tier
  account_replication_type = var.stg_account_replication_type
  tags                     = var.tags
  account_kind             = var.stg_account_kind
  access_tier             = var.stg_access_tier  
}
