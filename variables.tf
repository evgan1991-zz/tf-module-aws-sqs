variable "project" {
  description = "Project name will be used for naming resources in pattern %PROJECT_NAME%-%ENVIRONMENT_NAME%"
  default     = "project"
}

variable "environment" {
  description = "Environment name will be used for naming resources in pattern %PROJECT_NAME%-%ENVIRONMENT_NAME%"
  default     = "test"
}

variable "name" {
  type        = "string"
  description = "This is the human-readable name of the queue. If omitted, module will assign %PROJECT_NAME%-%ENVIRONMENT_NAME%"
  default     = ""
}

variable "tags" {
  type        = "map"
  description = "A mapping of tags to assign to the queue."
  default     = {}
}

variable "visibility_timeout_seconds" {
  description = "The visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see AWS docs."
  default     = 30
}

variable "message_retention_seconds" {
  description = "The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days)."
  default     = 345600
}

variable "max_message_size" {
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB)."
  default     = 262144
}

variable "delay_seconds" {
  description = "The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds."
  default     = 0
}

variable "receive_wait_time_seconds" {
  description = "The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately."
  default     = 0
}

variable "redrive_policy_count" {
  description = "COUNT FOR The JSON policy to set up the Dead Letter Queue, see AWS docs. Note: when specifying maxReceiveCount, you must specify it as an integer, and not a string."
  default     = 0
}

variable "redrive_policy_arn" {
  type        = "string"
  description = "ARN FOR The JSON policy to set up the Dead Letter Queue."
  default     = ""
}

variable "fifo_queue" {
  type        = "string"
  description = "Designating a FIFO queue. If not set, it defaults to false making it standard."
  default     = "false"
}

variable "content_based_deduplication" {
  type        = "string"
  description = "Enables content-based deduplication for FIFO queues. For more information, see the related documentation"
  default     = ""
}

variable "kms_master_key_id" {
  type        = "string"
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see Key Terms."
  default     = ""
}

variable "kms_data_key_reuse_period_seconds" {
  description = "The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes)."
  default     = 300
}
