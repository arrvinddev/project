data "aws_ami" "centos" {
  most_recent = true
  owners      = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"
  
}

data "aws_security_group" "allow-all" {
  name="allow-all"
}

variable "components" {
   default = ["frontend", "mongodb", "catalogue"]
}

variable "instance_type"{
  default = "t3.small"
}


resource "aws_instance" "instance" {
  ami           = data.aws_ami.centos.image_id
  count = length(var.components)
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]
  tags = {
    Name = var.components[count.index]
  }

}

# resource "aws_route53_record" "cart" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "cart-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.cart.private_ip]
# }

# resource "aws_instance" "frontend" {
#   ami           = data.aws_ami.centos.image_id
#  instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]
#   tags = {
#     Name = "frontend"
#   }
# }


# resource "aws_route53_record" "frontend" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "frontend-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.frontend.private_ip]
# }
# output "frontend" {
#   value = aws_instance.frontend.public_ip
# }

# resource "aws_instance" "catalogue" {
#   ami           = data.aws_ami.centos.image_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]

#   tags = {
#     Name = "catalogue"
#   }
# }

# resource "aws_route53_record" "catalogue" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "catalogue-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.catalogue.private_ip]
# }


# resource "aws_instance" "user" {
#   ami           = data.aws_ami.centos.image_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]

#   tags = {
#     Name = "user"
#   }
# }

# resource "aws_route53_record" "user" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "user-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.user.private_ip]
# }



# resource "aws_instance" "mongo" {
#   ami           = data.aws_ami.centos.image_id
#  instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]

#   tags = {
#     Name = "mongo"
#   }
# }

# resource "aws_route53_record" "mongo" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "mongo-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.mongo.private_ip]
# }

# resource "aws_instance" "redis" {
#   ami           = data.aws_ami.centos.image_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]

#   tags = {
#     Name = "redis"
#   }
# }

# resource "aws_route53_record" "redis" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "redis-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.redis.private_ip]
# }

# resource "aws_instance" "mysql" {
#   ami           = data.aws_ami.centos.image_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]

#   tags = {
#     Name = "mysql"
#   }
# }

# resource "aws_route53_record" "mysql" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "mysql-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.mysql.private_ip]
# }

# resource "aws_instance" "rabbitmq" {
#   ami           = data.aws_ami.centos.image_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]

#   tags = {
#     Name = "rabbitmq"
#   }
# }

# resource "aws_route53_record" "rabbitmq" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "rabbitmq-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.rabbitmq.private_ip]
# }

# resource "aws_instance" "shipping" {
#   ami           = data.aws_ami.centos.image_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]

#   tags = {
#     Name = "shipping"
#   }
# }


# resource "aws_route53_record" "shipping" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "shipping-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.shipping.private_ip]
# }

# resource "aws_instance" "payment" {
#   ami           = data.aws_ami.centos.image_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = [data.aws_security_group.allow-all.id]

#   tags = {
#     Name = "payment"
#   }
# }

# resource "aws_route53_record" "payment" {
#   zone_id = "Z05216872DPXAQS543510"
#   name    = "payment-dev.arrvind.tech"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.payment.private_ip]
# }




