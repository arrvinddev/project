data "aws_ssm_parameter" "db_user" {
  name = "${var.name}-${var.env}.db_user"
}

data "aws_ssm_parameter" "db_pass" {
  name = "${var.name}-${var.env}.db_pass"
}