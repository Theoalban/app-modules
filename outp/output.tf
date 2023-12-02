output "vpc_id" {
  value = aws_vpc.main.id
}

output "iam_user_arn" {
  value = aws_iam_user.main.arn
}

output "security_group_id" {
  value = aws_security_group.main.id
}

# Add more outputs as needed
