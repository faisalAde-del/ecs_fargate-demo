
resource "aws_ecr_repository" "demo" {
  name = var.ecr_repo_name
}


resource "aws_ecs_cluster" "demo" {
  name = var.ecs_cluster_name
}


resource "aws_ecs_task_definition" "demo" {
  family                   = var.ecs_task_family
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.cpu
  memory                   = var.memory

  container_definitions = <<DEFINITION
[
  {
    "name": "${var.container_name}",
    "image": "${var.container_image}",
    "portMappings": [
      {
        "containerPort": ${var.container_port},
        "hostPort": ${var.container_port}
      }
    ]
  }
]
DEFINITION
}
