data "databricks_metastores" "metastores_lookup" {
  for_each = var.metastores_lookup

  ids = each.value.ids
}

