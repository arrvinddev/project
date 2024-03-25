data "aws_security_group" "selected" {
  name="allow-all"
}

output "security_group_id" {
    value = coalesce(data.aws_security_group.selected.id, "")
}

