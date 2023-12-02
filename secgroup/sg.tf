resource "aws_security_group" "main" {
  name        = var.security_group_name
  description = "Main Security Group"
  vpc_id      = var.vpc_id
  // Add your security group rules here
}
