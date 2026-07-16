output "enterprise_actions_workflow_permissionses_id" {
  description = "Map of id values across all enterprise_actions_workflow_permissionses, keyed the same as var.enterprise_actions_workflow_permissionses"
  value       = { for k, v in github_enterprise_actions_workflow_permissions.enterprise_actions_workflow_permissionses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "enterprise_actions_workflow_permissionses_can_approve_pull_request_reviews" {
  description = "Map of can_approve_pull_request_reviews values across all enterprise_actions_workflow_permissionses, keyed the same as var.enterprise_actions_workflow_permissionses"
  value       = { for k, v in github_enterprise_actions_workflow_permissions.enterprise_actions_workflow_permissionses : k => v.can_approve_pull_request_reviews if v.can_approve_pull_request_reviews != null }
}
output "enterprise_actions_workflow_permissionses_default_workflow_permissions" {
  description = "Map of default_workflow_permissions values across all enterprise_actions_workflow_permissionses, keyed the same as var.enterprise_actions_workflow_permissionses"
  value       = { for k, v in github_enterprise_actions_workflow_permissions.enterprise_actions_workflow_permissionses : k => v.default_workflow_permissions if v.default_workflow_permissions != null && length(v.default_workflow_permissions) > 0 }
}
output "enterprise_actions_workflow_permissionses_enterprise_slug" {
  description = "Map of enterprise_slug values across all enterprise_actions_workflow_permissionses, keyed the same as var.enterprise_actions_workflow_permissionses"
  value       = { for k, v in github_enterprise_actions_workflow_permissions.enterprise_actions_workflow_permissionses : k => v.enterprise_slug if v.enterprise_slug != null && length(v.enterprise_slug) > 0 }
}

