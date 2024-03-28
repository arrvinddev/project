resource "aws_instance" "workstation" {
    ami = "ami-0f3c7d07486cad139"
    instance_type = "t2.small"
}

output "private_ip" {
    value = aws_instance.workstation.private_ip
  
}