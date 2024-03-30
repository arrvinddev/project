resource "aws_ssm_parameter" "parameter" {
  name  = "test.test"
  type  = "String"
  value = "Hello World"
}