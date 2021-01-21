resource "aws_ecs_service" "service" {
  cluster                = "arn:aws:ecs:ap-south-1:971076122335:cluster/sample"                              
  desired_count          = 1                                                      
  launch_type            = "EC2" 
  name                   = var.service_name 
  task_definition        = aws_ecs_task_definition.task_definition.arn 
  network_configuration {
    security_groups       = [aws_security_group.allow_http.id] 
    subnets               = [var.subnet1, var.subnet2]
    assign_public_ip      = "false"
  }
}