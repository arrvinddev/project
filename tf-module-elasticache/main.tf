
resource "aws_security_group" "main" {
  name        = "${var.name}-${var.env}-sg"
  description = "${var.name}-${var.env}-sg"
  vpc_id      = var.vpc_id

  ingress {

  description = "REDIS"
  from_port         = var.port_no
  protocol       = "tcp"
  to_port           = var.port_no
  cidr_blocks = var.allow_db_cidr

  }



  egress {

  
  from_port         = 0
  protocol       = "-1"
  to_port           = 0
  cidr_blocks = ["0.0.0.0/0"]
  ipv6_cidr_blocks = ["::/0"]


  }

  tags = merge(var.tags, {Name= "${var.name}-${var.env}-sg"})
}

resource "aws_elasticache_subnet_group" "main" {
  name       = "${var.name}-${var.env}-sng"
  subnet_ids = var.subnets

  tags = merge(var.tags, {Name= "${var.name}-${var.env}-sng"})
}


resource "aws_elasticache_parameter_group" "main" {
  family = "redis6.x"
  name   = "${var.name}-${var.env}-pg"
  description = "${var.name}-${var.env}-pg"
  tags = merge(var.tags, {Name= "${var.name}-${var.env}-pg"})
}


resource "aws_elasticache_cluster" "main" {
  cluster_id           = "${var.name}-${var.env}-elasticache"
  engine               = "redis"
  node_type            = var.node_type
  num_cache_nodes      = var.num_cache_nodes
  parameter_group_name = aws_elasticache_parameter_group.main.name
  engine_version       = var.engine_version
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.main.name
  security_group_ids =  [aws_security_group.main.id]
  tags = merge(var.tags, {Name= "${var.name}-${var.env}-elasticache"})
}

resource "aws_elasticache_replication_group" "main" {
  replication_group_id        = "${var.name}-${var.env}-elasticache"
  description                 = "${var.name}-${var.env}-elasticache"
  automatic_failover_enabled  = true
  node_type                   = var.node_type
  parameter_group_name        = aws_elasticache_parameter_group.main.name
  port                        = 6379
  num_node_groups = var.num_node_groups
  replicas_per_node_group = var.replicas_per_node_group
  subnet_group_name = aws_elasticache_subnet_group.main.name
  security_group_ids = [aws_security_group.main.id]
  engine = "redis"
  engine_version = var.engine_version
  at_rest_encryption_enabled = true
  kms_key_id = var.kms_arn
  tags = merge(var.tags, {Name= "${var.name}-${var.env}-elasticache"})

}





