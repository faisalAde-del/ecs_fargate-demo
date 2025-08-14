variable "aws_region" {
  default = "us-east-1"
}

variable "ecr_repo_name" {
  default = "ecs-fargate-demo"
}

variable "ecs_cluster_name" {
  default = "ecs-fargate-demo-cluster"
}

variable "ecs_task_family" {
  default = "ecs-fargate-demo-task"
}

variable "cpu" {
  default = "256"
}

variable "memory" {
  default = "512"
}

variable "container_port" {
  default = 80
}

variable "container_name" {
  default = "ecs-fargate-demo"
}

variable "container_image" {
  default = "aws_account_id.dkr.ecr.region.amazonaws.com/ecs-fargate-demo:latest"
}
