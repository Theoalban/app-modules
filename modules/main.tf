provider "aws" {
  region = "us-east-1"
}

module "my_vpc" {
  source     = "./app-modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
  vpc_name   = "my-vpc"
}

module "my_iam" {
  source      = "./app-modules/iam"
  user_name   = "my-user"
  group_name  = "my-group"
}

module "my_security_group" {
  source               = "./app-modules/security-group"
  security_group_name  = "my-security-group"
  vpc_id               = module.my_vpc.vpc_id
}

# Include other modules as needed
