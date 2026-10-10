variable "evidently_segments" {
  description = <<EOT
Map of evidently_segments, attributes below
Required:
    - name
    - pattern
Optional:
    - description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    name        = string
    pattern     = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.evidently_segments : (
        (length(v.pattern) >= 1 && length(v.pattern) <= 1024) && (can(jsondecode(v.pattern)))
      )
    ])
    error_message = "all of: must be between 1 and 1024 characters; must be valid JSON"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

