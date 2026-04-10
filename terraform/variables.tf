variable "aws_region" {
  description = "AWS region for interview examples."
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Base name for created resources."
  type        = string
  default     = "interview-service"
}

variable "environment" {
  description = "Environment name appended to resources."
  type        = string
  default     = "dev"
}

variable "container_image" {
  description = "Container image URI for the ECS task definition."
  type        = string
  default     = "123456789012.dkr.ecr.eu-west-2.amazonaws.com/interview-service:latest"
}

variable "container_port" {
  description = "Application port exposed by the container."
  type        = number
  default     = 8080
}

variable "service_version" {
  description = "Version string passed to the container."
  type        = string
  default     = "interview"
}

variable "task_cpu" {
  description = "CPU units for the Fargate task."
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Memory in MiB for the Fargate task."
  type        = number
  default     = 512
}

variable "tags" {
  description = "Extra tags to apply to resources."
  type        = map(string)
  default     = {}
}
