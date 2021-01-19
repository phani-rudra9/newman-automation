resource "aws_ecs_service" "service" {
  cluster                = "arn:aws:ecs:ap-south-1:971076122335:cluster/sample"                              # ecs cluster id
  desired_count          = 1                                                         # no of task running
  launch_type            = "EC2"                                                     # Cluster type EC2 OR FARGATE
  name                   = "sample"                                         # Name of service
  task_definition        = aws_ecs_task_definition.task_definition.arn       # Attaching Task to service
  network_configuration {
    security_groups       = [aws_security_group.allow_http.id] #CHANGE THIS
    subnets               = [var.subnet1, var.subnet2]  ## Enter the private subnet id
    assign_public_ip      = "false"
  }
}