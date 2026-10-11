variable "apigee_security_feedbacks" {
  description = <<EOT
Map of apigee_security_feedbacks, attributes below
Required:
    - feedback_id
    - feedback_type
    - org_id
    - feedback_contexts (block):
        - attribute (required)
        - values (required)
Optional:
    - comment
    - deletion_policy
    - display_name
    - reason
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    feedback_id     = string
    feedback_type   = string
    org_id          = string
    comment         = optional(string)
    deletion_policy = optional(string)
    display_name    = optional(string)
    reason          = optional(string)
    feedback_contexts = list(object({
      attribute = string
      values    = list(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigee_security_feedbacks : (
        length(v.feedback_contexts) >= 1
      )
    ])
    error_message = "Each feedback_contexts list must contain at least 1 items"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

