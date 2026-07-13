variable "enterprise_actions_workflow_permissionses" {
  description = <<EOT
Map of enterprise_actions_workflow_permissionses, attributes below
Required:
    - enterprise_slug
Optional:
    - can_approve_pull_request_reviews
    - default_workflow_permissions
EOT

  type = map(object({
    enterprise_slug                  = string
    can_approve_pull_request_reviews = optional(bool)
    default_workflow_permissions     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.enterprise_actions_workflow_permissionses : (
        v.default_workflow_permissions == null || (contains(["read", "write"], v.default_workflow_permissions))
      )
    ])
    error_message = "must be one of: read, write"
  }
}

