locals { 
    tags = merge(var.tags, {Name= "${var.name}-${var.env}-ngw"})
    dynamic_asg_tags = [ for k,v in local.asg_tags: tomap({key=k, value = v})]
}