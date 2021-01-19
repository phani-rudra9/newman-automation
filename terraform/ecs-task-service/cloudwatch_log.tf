resource "aws_cloudwatch_log_group" "log_group" {
  name = "newman-terra"
    tags = {
    Environment = "dev"
  }
}