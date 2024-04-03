resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type  = "String"
  key_id = "ca96756f-0bb2-4402-b6ae-7383aa4f1c79"
}

resource "aws_ssm_parameter" "parameter" {
  count = length(var.passwords)
  name  = var.passwords[count.index].name
  value = var.passwords [count.index].value
  type  = "SecureString"
  key_id = "ca96756f-0bb2-4402-b6ae-7383aa4f1c79"
}