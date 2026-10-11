output "apigee_security_feedbacks_id" {
  description = "Map of id values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no id are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_security_feedbacks_comment" {
  description = "Map of comment values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no comment are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "apigee_security_feedbacks_create_time" {
  description = "Map of create_time values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no create_time are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "apigee_security_feedbacks_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_security_feedbacks_display_name" {
  description = "Map of display_name values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no display_name are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigee_security_feedbacks_feedback_contexts" {
  description = "Map of feedback_contexts values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no feedback_contexts are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.feedback_contexts if v.feedback_contexts != null && length(v.feedback_contexts) > 0 }
}
output "apigee_security_feedbacks_feedback_id" {
  description = "Map of feedback_id values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no feedback_id are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.feedback_id if v.feedback_id != null && length(v.feedback_id) > 0 }
}
output "apigee_security_feedbacks_feedback_type" {
  description = "Map of feedback_type values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no feedback_type are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.feedback_type if v.feedback_type != null && length(v.feedback_type) > 0 }
}
output "apigee_security_feedbacks_name" {
  description = "Map of name values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no name are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigee_security_feedbacks_org_id" {
  description = "Map of org_id values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no org_id are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "apigee_security_feedbacks_reason" {
  description = "Map of reason values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no reason are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.reason if v.reason != null && length(v.reason) > 0 }
}
output "apigee_security_feedbacks_update_time" {
  description = "Map of update_time values across all apigee_security_feedbacks, keyed the same as var.apigee_security_feedbacks except keys with no update_time are omitted"
  value       = { for k, v in google_apigee_security_feedback.apigee_security_feedbacks : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

