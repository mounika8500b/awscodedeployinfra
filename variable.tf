# Standard Variables
#####################################################################
#variable "environment" {}
variable "aws_region" {}

# AWS Resources Variables
#####################################################################
variable "api_name" {
  description = "API Name"
  type = string
}

variable "codedeploy_service_role_arn" {}
variable "deployment_controller_type" {}
#aws_region = "us-east-2"
#codedeploy_service_role_arn = "arn:aws:iam::268388983425:role/codedeployservicename"
#deployment_controller_type = "CODE_DEPLOY"
#compute_platform = "Amazon EC2 instances"
