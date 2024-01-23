output "alb_dns_name" {
  value       = module.webserver_cluster.alb_dns_name
  description = "The domain name of the load balancer"
}

output "autoscaling_group_sg_name" {
  description = "The domain name of the load balancer"
  value = module.webserver_cluster.alb_security_group_id
}

output "instance_sg_name" {
  description = "The domain name of the load balancer"
  value = module.webserver_cluster.instace_security_group_id
}

output "db_dns_name" {
  description = "The domain name of the DB"
  value = module.mysql_db.address
}

output "db_port" {
  description = "The DB port"
  value = module.mysql_db.port
}

