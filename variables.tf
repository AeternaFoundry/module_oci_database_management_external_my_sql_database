variable "database_management_external_my_sql_databases" {
  description = <<EOT
Map of database_management_external_my_sql_databases, attributes below
Required:
    - compartment_id
    - db_name
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    db_name        = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

