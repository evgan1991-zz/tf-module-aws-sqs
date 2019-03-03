output "id" {
  description = "The URL for the created Amazon SQS queue"
  value       = "${local.id}"
}

output "arn" {
  description = "The ARN of the SQS queue"
  value       = "${local.arn}"
}

output "deadletter_id" {
  description = "The URL for the created Amazon queue_deadletter"
  value       = "${local.deadletter_id}"
}

output "deadletter_arn" {
  description = "The ARN of the queue_deadletter"
  value       = "${local.deadletter_arn}"
}
