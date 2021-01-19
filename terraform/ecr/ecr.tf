resource "aws_ecr_repository" "ecr" {
  name = "ecr-newman"
  tags = {
   created_by = "vara"
}
}
