output "metastores_lookup_id" {
  description = "Map of id values across all metastores_lookup, keyed the same as var.metastores_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_metastores.metastores_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metastores_lookup_ids" {
  description = "Map of ids values across all metastores_lookup, keyed the same as var.metastores_lookup except keys with no ids are omitted"
  value       = { for k, v in data.databricks_metastores.metastores_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}

