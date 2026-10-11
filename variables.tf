variable "metastores_lookup" {
  description = <<EOT
Map of metastores_lookup, attributes below
Optional:
    - ids
EOT

  type = map(object({
    ids = optional(map(string))
  }))
}

