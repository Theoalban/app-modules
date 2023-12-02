resource "aws_iam_user" "user-demo" {
  name = var.user_name
  tags = {
    Team                = "Devops"
    Env                 = "Dev"
    create_by_terraform = "yes"
    Owner               = "serge"
    email               = "dimitri@gmail.com"

  }

resource "aws_iam_group" "main" {
  name = var.group_name
}
}
