resource "aws_ssm_parameter" "parameter" {
  name  = "test.test1"
  value = "Hello World"
  type  = "SecureString"
  key_id = "ca96756f-0bb2-4402-b6ae-7383aa4f1c79"
}