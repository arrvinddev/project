resource "aws_instance" "test" {
    ami = "ami-0f3c7d07486cad139"
    instance_type = var.instance_type
    subnet_id = var.subnet_id
}

variable "instance_type" {
  
}
variable "subnet_id" {
  
}