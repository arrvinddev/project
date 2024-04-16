locals {
   all_private_subnet_ids = concat(length(module.subnets["db"].route_table_ids),length(module.subnets["app"].route_table_ids),length(module.subnets["web"].route_table_ids))
}