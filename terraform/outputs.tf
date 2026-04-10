output "ecr_repository_url" {
  description = "URL of the created ECR repository."
  value       = aws_ecr_repository.app.repository_url
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster."
  value       = aws_ecs_cluster.app.name
}

output "task_definition_family" {
  description = "Family name of the ECS task definition."
  value       = aws_ecs_task_definition.app.family
}
