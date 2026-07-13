resource "github_enterprise_actions_workflow_permissions" "enterprise_actions_workflow_permissionses" {
  for_each = var.enterprise_actions_workflow_permissionses

  enterprise_slug                  = each.value.enterprise_slug
  can_approve_pull_request_reviews = each.value.can_approve_pull_request_reviews
  default_workflow_permissions     = each.value.default_workflow_permissions
}

