data "aws_ami" "centos" {
  most_recent = true
  owners      = ["973714476881"]
  name_regex  = "Centos-8-DevOps-Practice"

}

data "aws_security_group" "allow-all" {
  name = "allow-all"
}

variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.small"
    }
    mongo = {
      name          = "mongo"
      instance_type = "t3.small"
    }

    catalogue = {
      name          = "catalogue"
      instance_type = "t3.small"
    }

    redis = {
      name          = "redis"
      instance_type = "t3.small"
    }

    user = {
      name          = "user"
      instance_type = "t3.small"
    }

    cart = {
      name          = "cart"
      instance_type = "t3.small"

    }

    rabbitmq = {
      name          = "rabbitmq"
      instance_type = "t3.small"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.small"
    }

    shipping = {
      name          = "shipping"
      instance_type = "t3.small"
    }

    payment = {
      name          = "payment"
      instance_type = "t3.small"
    }


  }

}







resource "aws_instance" "instance" {
  ami                    = data.aws_ami.centos.image_id
  for_each               = var.components
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]
  tags = {
    Name = each.value["name"]
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




