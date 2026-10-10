output "evidently_segments_id" {
  description = "Map of id values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "evidently_segments_arn" {
  description = "Map of arn values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "evidently_segments_created_time" {
  description = "Map of created_time values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.created_time if v.created_time != null && length(v.created_time) > 0 }
}
output "evidently_segments_description" {
  description = "Map of description values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "evidently_segments_experiment_count" {
  description = "Map of experiment_count values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.experiment_count if v.experiment_count != null }
}
output "evidently_segments_last_updated_time" {
  description = "Map of last_updated_time values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.last_updated_time if v.last_updated_time != null && length(v.last_updated_time) > 0 }
}
output "evidently_segments_launch_count" {
  description = "Map of launch_count values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.launch_count if v.launch_count != null }
}
output "evidently_segments_name" {
  description = "Map of name values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "evidently_segments_pattern" {
  description = "Map of pattern values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "evidently_segments_region" {
  description = "Map of region values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "evidently_segments_tags" {
  description = "Map of tags values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "evidently_segments_tags_all" {
  description = "Map of tags_all values across all evidently_segments, keyed the same as var.evidently_segments"
  value       = { for k, v in aws_evidently_segment.evidently_segments : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

