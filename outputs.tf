output "enterprise_actions_workflow_permissionses_id" {
  description = "Map of id values across all enterprise_actions_workflow_permissionses, keyed the same as var.enterprise_actions_workflow_permissionses"
  value       = { for k, v in github_enterprise_actions_workflow_permissions.enterprise_actions_workflow_permissionses : k => v.id }
}
output "enterprise_actions_workflow_permissionses_can_approve_pull_request_reviews" {
  description = "Map of can_approve_pull_request_reviews values across all enterprise_actions_workflow_permissionses, keyed the same as var.enterprise_actions_workflow_permissionses"
  value       = { for k, v in github_enterprise_actions_workflow_permissions.enterprise_actions_workflow_permissionses : k => v.can_approve_pull_request_reviews }
}
output "enterprise_actions_workflow_permissionses_default_workflow_permissions" {
  description = "Map of default_workflow_permissions values across all enterprise_actions_workflow_permissionses, keyed the same as var.enterprise_actions_workflow_permissionses"
  value       = { for k, v in github_enterprise_actions_workflow_permissions.enterprise_actions_workflow_permissionses : k => v.default_workflow_permissions }
}
output "enterprise_actions_workflow_permissionses_enterprise_slug" {
  description = "Map of enterprise_slug values across all enterprise_actions_workflow_permissionses, keyed the same as var.enterprise_actions_workflow_permissionses"
  value       = { for k, v in github_enterprise_actions_workflow_permissions.enterprise_actions_workflow_permissionses : k => v.enterprise_slug }
}

