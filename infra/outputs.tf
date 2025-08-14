output "ecr_repo_url" {
value = aws_ecr_repository.demo.repository_url
}
output "ecs_cluster_name" {
value = aws_ecs_cluster.demo.name
}

