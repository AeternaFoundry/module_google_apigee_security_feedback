resource "google_apigee_security_feedback" "apigee_security_feedbacks" {
  for_each = var.apigee_security_feedbacks

  feedback_id     = each.value.feedback_id
  feedback_type   = each.value.feedback_type
  org_id          = each.value.org_id
  comment         = each.value.comment
  deletion_policy = each.value.deletion_policy
  display_name    = each.value.display_name
  reason          = each.value.reason

  dynamic "feedback_contexts" {
    for_each = each.value.feedback_contexts
    content {
      attribute = feedback_contexts.value.attribute
      values    = feedback_contexts.value.values
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

