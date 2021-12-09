# Variables to show after the deployment
#########################################

output "codedeploy_application_name" {
  value = aws_codedeploy_app.api_app.name
}
