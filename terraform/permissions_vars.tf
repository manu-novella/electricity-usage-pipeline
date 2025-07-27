variable "object_type" {
  description = "Type of object to grant permissions on: catalog, schema, or table"
  type        = string
}

variable "object_name" {
  description = "Name of the object: catalog name, catalog.schema, or catalog.schema.table"
  type        = string
}

variable "principal_type" {
  description = "Type of principal: user or group"
  type        = string
}

variable "principal_name" {
  description = "Name of the user or group to grant permissions"
  type        = string
}

variable "privileges" {
  description = "List of privileges to grant: SELECT, USE CATALOG..."
  type        = list(string)
}
