# terraform {
#   required_version = ">= 0.12, < 0.13"
# }

provider "aws" {
  region = "ap-northeast-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 2.0"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = var.cluster_name
  db_remote_state_bucket = var.db_remote_state_bucket
  db_remote_state_key    = var.db_remote_state_key
  create_egress = var.create_egress
  # prod = var.prod

  instance_type = "m4.large"
  min_size      = 2
  max_size      = 10
  
  db_adress = module.mysql_db.address
  db_port = module.mysql_db.port
  create_schedule = var.create_shcedule
}

module "mysql_db" {
  source = "../../../modules/data-stores/mysql"
  db_identi = var.db_identifier
}


# autoscaling_group_sg_name = module.webserver_cluster.alb_security_group_id
# instance_sg_id = module.webserver_cluster.instace_security_group_id



