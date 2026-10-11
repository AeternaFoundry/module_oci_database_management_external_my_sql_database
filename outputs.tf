output "database_management_external_my_sql_databases_id" {
  description = "Map of id values across all database_management_external_my_sql_databases, keyed the same as var.database_management_external_my_sql_databases except keys with no id are omitted"
  value       = { for k, v in oci_database_management_external_my_sql_database.database_management_external_my_sql_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_management_external_my_sql_databases_compartment_id" {
  description = "Map of compartment_id values across all database_management_external_my_sql_databases, keyed the same as var.database_management_external_my_sql_databases except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_management_external_my_sql_database.database_management_external_my_sql_databases : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_management_external_my_sql_databases_db_name" {
  description = "Map of db_name values across all database_management_external_my_sql_databases, keyed the same as var.database_management_external_my_sql_databases except keys with no db_name are omitted"
  value       = { for k, v in oci_database_management_external_my_sql_database.database_management_external_my_sql_databases : k => v.db_name if v.db_name != null && length(v.db_name) > 0 }
}
output "database_management_external_my_sql_databases_external_database_id" {
  description = "Map of external_database_id values across all database_management_external_my_sql_databases, keyed the same as var.database_management_external_my_sql_databases except keys with no external_database_id are omitted"
  value       = { for k, v in oci_database_management_external_my_sql_database.database_management_external_my_sql_databases : k => v.external_database_id if v.external_database_id != null && length(v.external_database_id) > 0 }
}

