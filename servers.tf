resource "aws_instance" "instance" {
  ami                    = data.aws_ami.centos.image_id
  for_each               = var.components
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]
  tags = {
    Name = each.value["name"]
  }
}

resource "null_resource" "provisioner" {
  depends_on = [ aws_instance.instance,aws_route53_record.records ]
  for_each = var.components
  provisioner "remote-exec" {

  connection {
    type     = "ssh"
    user     = "root"
    password = "DevOps321"
    host     = aws_instance.instance[each.value["name"]].private_ip
  }

    inline = [
      "rm -rf roboshop-shell",
      "git clone https://github.com/raghudevopsb72/roboshop-shell",
      "cd roboshop-shell",
      "sudo bash ${each.value["name"]}.sh"
    ]


    
  
  }


}
  




resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id  = "Z05216872DPXAQS543510"
  name     = "${each.value["name"]}-dev.arrvind.tech"
  type     = "A"
  ttl      = 30
  records  = [aws_instance.instance[each.value["name"]].private_ip]
}




