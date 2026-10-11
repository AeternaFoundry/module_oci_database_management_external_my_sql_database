resource "oci_database_management_external_my_sql_database" "database_management_external_my_sql_databases" {
  for_each = var.database_management_external_my_sql_databases

  compartment_id = each.value.compartment_id
  db_name        = each.value.db_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

