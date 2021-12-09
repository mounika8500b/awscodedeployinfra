############################################################
#  Configure Infrastructure On AWS For Web API
############################################################

terraform {
  backend "s3" {
    bucket = "inv-infra-automation2"
    key    = "test"
    region = "us-east-2"    
  }
}

provider "aws" {
   #region = "${var.aws_region}"   
   region = "us-east-2"
}




#########################################
# Codedeploy Configurations
#########################################
resource "aws_codedeploy_app" "api_app" {
  compute_platform = "Server"
  name             = "App-api"
}

#########################################
# Codedeploy Deployment Group Configurations
#########################################
resource "aws_codedeploy_deployment_group" "api_codedeploy_dg" {
  app_name              = aws_codedeploy_app.api_app.name
  deployment_group_name = "Dgp-deploymentgroupname"
  service_role_arn      = "arn:aws:iam::268388983425:role/codedeployservicename"
  auto_rollback_configuration {
    enabled = true
    events  = ["DEPLOYMENT_FAILURE"]
  }
}