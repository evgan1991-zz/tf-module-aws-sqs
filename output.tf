output "id" {
  value       = "${local.id}"
  description = "The URL for the created Amazon SQS queue"
}

output "arn" {
  value       = "${local.arn}"
  description = "The ARN of the SQS queue"
}

output "deadletter_id" {
  value       = "${local.deadletter_id}"
  description = "The URL for the created Amazon queue_deadletter"
}

output "deadletter_arn" {
  value       = "${local.deadletter_arn}"
  description = "The ARN of the queue_deadletter"
}
