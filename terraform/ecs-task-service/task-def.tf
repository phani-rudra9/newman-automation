resource "aws_ecs_task_definition" "task_definition" {
  container_definitions    = data.template_file.task_definition_json.rendered                                        # task defination json file location
  execution_role_arn       = aws_iam_role.task_role.arn                                                                    # role for executing task
  family                   = var.task_family                                                                      # task name
  network_mode             = "awsvpc"                                                                                      # network mode awsvpc, brigde
  memory                   = "2048"
  cpu                      = "1024"
  requires_compatibilities = ["EC2"]                                                                                       # Fargate or EC2
  task_role_arn            = aws_iam_role.task_role.arn                                                                   # TASK running role
} 

data "template_file" "task_definition_json" {
  template = file("taskdef/taskdef.json")
}