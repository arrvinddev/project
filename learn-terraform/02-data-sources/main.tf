# data "aws_security_group" "selected" {
#   name="allow-all"
# }

# output "security_group_id" {
#     value = coalesce(data.aws_security_group.selected.id, "")
# }


data "aws_security_groups" "test" {
  
}

data "aws_security_group" "single"{
    count = length(data.aws_security_group.test.id)
    id = data.aws_security_groups.test[count.index]

}

output "single"{
    value = data.aws_security_group.single
}

output "all_sg" {
  value = data.aws_security_groups.test
}