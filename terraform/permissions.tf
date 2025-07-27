resource "databricks_grants" "permissions" {
  dynamic "catalog" {
    for_each = var.object_type == "catalog" ? [1] : []
    content {
      catalog = var.object_name

      grant {
        principal  = var.principal_name
        privileges = var.privileges
      }
    }
  }

  dynamic "schema" {
    for_each = var.object_type == "schema" ? [1] : []
    content {
      schema = var.object_name

      grant {
        principal  = var.principal_name
        privileges = var.privileges
      }
    }
  }

  dynamic "table" {
    for_each = var.object_type == "table" ? [1] : []
    content {
      table = var.object_name

      grant {
        principal  = var.principal_name
        privileges = var.privileges
      }
    }
  }
}
