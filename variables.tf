# default

variable "build_location" {
  type = string
  description = "Location where the resource will be stored"
}

variable "service" {
  type = string
  description = "A service name to assign the resource"
}

variable "prefix" {
  type = string
  description = "A prefix name to assign the resource"
}

variable "tags" {
  type = map(string)
  description = "A mapping of tags to assign to the resource."
}

variable "resource_group" {
  type = string
  description = "Resource group where the resource will be stored"
}

# storage account

variable "stg_account_tier" {
  type = string
  description = "Tier to use for this storage account"
  default = "Standard"
}

variable "stg_account_replication_type" {
  type = string
  description = "Type of replication to use for this storage account"
  default = "LRS"
}

variable "stg_account_kind" {
  type = string
  description = "Kind of account"
  default = "StorageV2"
}

variable "stg_access_tier" {
  type = string
  description = "efines the access tier for BlobStorage, FileStorage and StorageV2 accounts"
  default = "Cool"  
}